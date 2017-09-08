---
title       : 5. Vector Arithmetic
description : In this chapter, you will learn to perform arithmetic operations with vectors. 

--- type:NormalExercise lang:r xp:100 skills:1 key:646acee888
## 1. Arithmetic on whole Vector 

You can perform arithmetic on vectors that modifies all the values of the vectors in one step. For example, if you want to add `5` to all elements of a nnumeric vector, you can do that by the command 
    `v <- v + 5`
    
For this exercise, recall that previously, you created a data frame with the calories of some desserts (in calorie units). 
You will now operate on the vector to convert the calorie units to joule units. 

*** =instructions
- Run the first few lines to reload the data values
- In the a new vector `joules`, store the joules converted values of vector `calories` (1 cal = 4.18 joules)
- Create a new dataframe `desserts_joules` with columns `Dessert` and `Joules` containing the vectors `dessert` and `joules` respectively
- Print the new dataframe

*** =hint

*** =pre_exercise_code
```{r}
#no pec
```
*** =sample_code
```{r}
# Example: Converting temperature from farenheit to celcius
temp <- c(35, 88, 42, 84, 81, 30)
temp <- (temp - 32)*4/9

# Code from previous exercises:
desserts <- c("cheesecake", "chocolate_mousse", "brownie", "apple_pie", "pudding")
calories <- c(257, 355, 243, 411, 288)
desserts_calories <- data.frame(Dessert = desserts, Calorie = calories)

# Convert from calories to joules 


# Create the new dataframe


# Print the dataframe `desserts_joules`



```
*** =solution
```{r}
# Example: Converting temperature from farenheit to celcius
temp <- c(35, 88, 42, 84, 81, 30)
temp <- (temp - 32)*4/9

# Code from previous exercises:
desserts <- c("cheesecake", "chocolate_mousse", "brownie", "apple_pie", "pudding")
calories <- c(257, 355, 243, 411, 288)
desserts_calories <- data.frame(Dessert = desserts, Calorie = calories)

# Convert from calories to joules
joules<- calories*4.18

# Create the new dataframe
desserts_joules<- data.frame(Dessert = desserts, Joules = joules)

# Print the dataframe `desserts_joules`
desserts_joules
```

*** =sct
```{r}
test_error()
test_object("joules", undefined_msg = "Define joules first.", incorrect_msg = "Check the conversion rate.")
test_object("desserts_joules", undefined_msg = "Define desserts_joules first.", incorrect_msg = "Create the dataframe with joules instead of calories.")
test_student_typed("desserts_joules", not_typed_msg = "Just type out the variable you need to print.")
success_msg("Awesome! Hope you are loving this!")
```
----


--- type:NormalExercise lang:r xp:100 skills:1 key:b7994768fd
## 2. Sum and Sequence

You learnt about generating a sequence of numbers. In this exercise, you will generate a sequence of numbers, store it in a vector and perform a sum operation of all the elements of the vector. 

If `v = [1,2,3,4]`, then `sum(v) = 10`, which is the sum of all the elements of the vector. 

You can extend this logic to calculate sum of squares of each element etc. 

`sum(v^2)` is mathematically equal to `1^2 + 2^2 + 3^2 + 4^2`. So, `sum(v^2)` = 30. 

Apply this knowledge for the problem: 
    Calculate the following: 
    `1 + 1/(2^3) + 1/ (3^3) +...+ 1/(2500^3)`

*** =instructions
- In a vector `x`, store a generated sequence of numbers from 1 to 2500
- Apply `sum()` to the form of the vector as required in the problem

*** =hint
Find `sum()` of `1/x^3`

*** =pre_exercise_code
```{r}
# no pec
```

*** =sample_code
```{r}
# Create a sequence of numbers from 1-2500 and store it in `x`


# Use the `sum` command to answer the question


```
*** =solution
```{r}
# Create a sequence of numbers from 1-2500 and store it in `x`
x <- seq(1,2500)

# Use the `sum` command to answer the question
sum (1/ x^3)
```
*** =sct
```{r}
test_error()
test_object("x", undefined_msg = "Define x first.", incorrect_msg = "Use the seq command.")
test_student_typed("sum (1/ x^3)", not_typed_msg = "Check the formula.")
success_msg("Awesome! Good job.")
```
----


--- type:NormalExercise lang:r xp:100 skills:1 key:39eec07e4a
## 3. Vector arithmetic with multiple vectors when their lengths are not equal 

In the previous exercises, only one of the values in an operation was a vector, and the other was just one number (scalar). In such cases, R creates a vector of the same length with repeated values of the single number, and then performs the calculation on matching elements of the two vectors.



*** =instructions
- Run the sample code on the right
- Note how shorter vectors (including single values) are "recycled", and you get a warning when the length of the longer vector is not a multiple of the shorter vector


*** =hint



*** =pre_exercise_code
```{r}
# no pec
```

*** =sample_code
```{r}
# Example: Vectors and scalars
x <- c(1,3,5,7,9,11)
y <- 6:10
z <- c(100, 1000)
x + y
x * z

 

```

*** =solution
```{r}

```

*** =sct
```{r}

```
----
--- type:NormalExercise lang:r xp:100 skills:1 key:a5c8b01024
## 4. Vector arithmetic with multiple vectors when their lengths are equal 

You perform the arithmetic as though they are simple variables. For example, if `a = [4,6,8]` and `b = [2,3,4]`, then, `a/b = [2,2,2]` which is a division of each element of `a` and the corresponding element of `b`. 

Recall from previous exercise that, if their sizes are not equal, then R will 'recycle' the values of the shorter vector.

In this exercise, you will perform arithmetic between 2 columns of the `murders` dataset. Since they are from the same dataset, their sizes are equal. The `murders` dataset will be loaded by commands already in the code.


*** =instructions
- Compute the murder rate per 100,000 people for each state and store it in the vector `murder_rate` 
- Compute the mean of the murder rate per 100,000 people across all US states

*** =hint

Murder rate per x = (total number of murders / population) * x

*** =pre_exercise_code
```{r}

```

*** =sample_code
```{r}
# Load the dslabs package and murders dataset
library(dslabs)
data(murder)

# Store the per 100,000 murder rate for each state in `murder_rate`


# Calculate and print the average per 100,000 murder rate in the US

```

*** =solution
```{r}
# Load the dslabs package and murders dataset
library(dslabs)
data(murders)

# Store the per 100,000 murder rate for each state in `murder_rate`
murder_rate <- murders$total/murders$population*100000

# Calculate and print the average murder rate in the US
mean(murder_rate)
```

*** =sct
```{r}
test_error()
test_object("murder_rate", incorrect_msg = "Make sure you multiply the murder rate by 100,000.")
test_output_contains("mean(murder_rate)")
success_msg("Good! You're done with this chapter.")
```
