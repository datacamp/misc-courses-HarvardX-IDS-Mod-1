---
title       : Programming Basics 
description : 

--- type:MultipleChoiceExercise lang:r xp:50 skills:1 key:ba015a0cbd
## 1. Conditional Expressions 

What will this conditional expression return?
Run it from the console. 

`x <- c(1,2,-3,4)` 
`if(all(x>0)){print("All Postives")} else{print("Not All Positives")}`

*** =instructions
- All Positives
- Not All Positives
- N/A
- None of the above 

*** =hint
Are the numbers stored in x positive or not?

*** =pre_exercise_code
```{r}
# no pec
```

*** =sct
```{r}
msg1 = "Look at the values again."
msg2 = "Awesome! That is correct."
msg3 = "Check the question again."
msg4 = "Check the values in x once more."
test_mc(correct = 2, feedback_msgs = c(msg1,msg2,msg3,msg4))
```
--- type:MultipleChoiceExercise lang:r xp:50 skills:1 key:3641a0ea21
## 2. Conditional Expressions again! 

Which of the following expressions is always `FALSE` when at least one entry of a logical vector x is `TRUE`?

*** =instructions
- all(x) 
- any(x) 
- any(!x) 
- all(!x)

*** =hint

*** =pre_exercise_code
```{r}
# no pec
```

*** =sct
```{r}
msg1 = "Try again!Try an example on the R console."
msg2 = "Re-read the question! Try an example on the R console."
msg3 = "Check the question again. Try an example on the R console."
msg4 = "Good job! Let's move to the next question."
test_mc(correct = 4, feedback_msgs = c(msg1,msg2,msg3,msg4))
```
----
--- type:NormalExercise lang:r xp:100 skills:1 key:9e33032243
## 3. Conditional Expressions again and again! "nchar & ifelse"

The function nchar tells you how many characters long a character vector is. For example:

library(dslabs)
data(murders)
`char_len <- nchar(murders$state)`
`char_len[1:5]`

*** =instructions

Write a line of code that assigns to the object new_names the state abbreviation when the state name is longer than 8 characters.


*** =hint

*** =pre_exercise_code
```{r}
load(url("http://s3.amazonaws.com/assets.datacamp.com/production/course_3073/datasets/murders.rda"))
```

*** =sample_code
```{r}
# Assign the state abbreviation when the state name is longer than 8 characters 
```

*** =solution
```{r}
# Assign the state abbreviation when the state name is longer than 8 characters 
new_names <- ifelse(nchar(murders$state)>8, murders$abb, murders$state)

```

*** =sct
```{r}
test_error()
test_object("new_names", undefined_msg = "Make sure you define new_names!", incorrect_msg = "It has to be one line of code. Combine nchar and ifelse.")
success_msg("Whoohoo! You're becoming a pro at this!")
```
----
--- type:NormalExercise lang:r xp:100 skills:1 key:8232e54e7b
## 4. Defining functions

You will encounter situations in which the function you need does not already exist so R permits you to write your own.  Let's practice one such situation, in which you first need to define the function to be used. The functions you define can have multiple arguments as well as default values.

*** =instructions
Create a function `sum_n` that for any given value, say `$n$`, computes the sum of the integers from 1 to n (inclusive).
Use the function to determine the sum of integers from 1 to 5,000.

*** =hint
- To make it inclusive, use {}. 
- Use code `sum_n <- function(n){sum(1:n)}` 

*** =pre_exercise_code
```{r}
# no pec 
```

*** =sample_code
```{r}
# Create function called `sum_n`

# Determine the sum of integers from 1 to 5000


```

*** =solution
```{r}
# Create function called `sum_n`
sum_n <- function(n){sum(1:n)}

# Determine the sum of integers from 1 to 5000
sum_n(5000)
```

*** =sct
```{r}
test_error()
test_object("sum_n", undefined_msg = "Make sure you define sum_n!", incorrect_msg = "Use commands function(n) and sum.")
test_function("sum_n", incorrect_msg = "You need to check for the sum of 5000 integers!")
success_msg("This is awesome! Let's get to the next exercise.")
```
----
--- type:NormalExercise lang:r xp:100 skills:1 key:bc66a1fe8f
## 5. Defining functions continued...

*** =instructions

Create a function `altman_plot` that takes two arguments x and y and plots the difference(y-axis) against the sum(x-axis).


*** =hint
The command for plot, is `{plot(x+y, y-x)}`. 

*** =pre_exercise_code
```{r}
# no pec 
```

*** =sample_code
```{r}
# Create `altman_plot` 

# Try running this function on your own by replacing x and y with any number! 

```

*** =solution
```{r}
# Create `altman_plot` 
altman_plot <- function(x, y){plot(x+y, y-x)}

```

*** =sct
```{r}
test_error()
test_object("altman_plot", undefined_msg = "Be sure to define altman_plot first.", incorrect_msg = "Make sure you are plotting (x,y) and calling the function that as well.")
success_msg("That's great! You can also play around with the variables and put in values for x and y.")
```
----
--- type:NormalExercise lang:r xp:100 skills:1 key:6544013f7c
## 6. Defining functions - another one ! 


*** =instructions
```{r}
After running the code below, what is the value of x?

```
*** =hint

*** =pre_exercise_code
```{r}
x <- 3
```

*** =sample_code
```{r}
# Run this code 
x <- 3
my_func <- function(y){
x <- 5
y+5
}

# Print value of x 
```

*** =solution
```{r}
# Print value of x
x
```

*** =sct
```{r}
test_error()
test_object("x", incorrect_msg = "How do you print the value of x?")
success_msg("Good job!") 
```
----

--- type:NormalExercise lang:r xp:100 skills:1 key:cf000aaad9
## 7. For Loops - 1


*** =instructions
Write a function `compute_s_n` that for any given $n$ computes the sum `S_n = 1^2 + 2^2 + 3^2 +...+ n^2`. 
Report the value of the sum when `n=10`.

*** =hint

*** =pre_exercise_code
```{r}
# no pec 
```

*** =sample_code
```{r}
# Write the function for (n), with the above mentioned specifications and store it in `compute_s_n` 

# Report the value of the sum when n=10


```

*** =solution
```{r}
# Write the function for (n), with the above mentioned specifications and store it in `compute_s_n` 
compute_s_n <- function(n){
  x <- 1:n
  sum(x^2)
}

# Report the value of the sum when n=10
compute_s_n(10)
```

*** =sct
```{r}
test_error()
test_object("compute_s_n", undefined_msg = "Store it in `compute_s_n`.", incorrect_msg = "Make sure you include both arguments in the function command.")
test_output_contains("compute_s_n(10)", incorrect_msg = "Place 10 in stead of n in the function.")
success_msg("That's awesome! You're getting so good at this!")
```
----
--- type:NormalExercise lang:r xp:100 skills:1 key:02c5d3c4b6
## 8. For Loops - 2 

*** =instructions

Now define an empty numerical vector `s_n` of size 25 using `s_n <- vector("numeric", 25)` and store in the results of `S_1, S_2,...,S_25`.

*** =hint
Check the chapter on for loops for the codes!

*** =pre_exercise_code
```{r}
# no pec 
```

*** =sample_code
```{r}
# Define a function and store it in `compute_s_n`


# Assign values to n and x 


```

*** =solution
```{r}

# Define a function and store it in `compute_s_n`
compute_s_n <- function(n){
  x <- 1:n
  sum(x^2)
}

# Assign values to `n` and `s_n`
n <- 1:25
s_n <- vector("numeric", 25)
for(i in n){
  s_n[i] <- compute_s_n(i)
}
```

*** =sct
```{r}
test_error()
test_object("compute_s_n", undefined_msg = "Make sure to define compute_s_n first.", incorrect_msg = "Are you assigning the correct values to x? ")
test_object("n", incorrect_msg = "Check code.")
test_object("s_n", incorrect_msg = "Have you assigned values to n and x?")
success_msg("This is great! You now know the basics of for loops in R.")
```
----
--- type:NormalExercise lang:r xp:100 skills:1 key:81431dc1d4
## 9. For Loops and Plotting - 1 

`s_n` and `n` have already been defined in the previous question and are stored in memory for you!  

*** =instructions
Plot `s_n` versus `n`. Using points defined by `n=1,...,25`.

*** =hint
In the plot code, n is the x, and s_n is the y. 

*** =pre_exercise_code
```{r}
compute_s_n <- function(n){
  x <- 1:n
  sum(x^2)
}

n <- 1:25
s_n <- vector("numeric", 25)
for(i in n){
  s_n[i] <- compute_s_n(i)
}

```

*** =sample_code
```{r}

#  Create the plot 


```

*** =solution
```{r}

#  Create the plot 
plot(n, s_n)
```

*** =sct
```{r}
test_error()
test_function("plot", incorrect_msg = "Did you plot the x and y axis correctly?")
success_msg("Awesome! Let's go to the last exercise in this chapter!")
```
----


--- type:NormalExercise lang:r xp:100 skills:1 key:cb64a8f82d
## 10. Identical 


*** =instructions
Confirm that `s_n = n(n+1)(2n+1)/6` using the `identical` command.

*** =hint

*** =pre_exercise_code
```{r}
compute_s_n <- function(n){
  x <- 1:n
  sum(x^2)
}

n <- 1:25
s_n <- vector("numeric", 25)
for(i in n){
  s_n[i] <- compute_s_n(i)
}

```

*** =sample_code
```{r}
# Check that s_n is identical to the formula given in the instructions.

```

*** =solution
```{r}
# Check that s_n is identical to the formula given in the instructions.
identical(s_n, n*(n+1)*(2*n+1)/6)
```

*** =sct
```{r}
test_error()
test_output_contains("identical(s_n, n*(n+1)*(2*n+1)/6)", incorrect_msg = "Make sure you're checking your formula!")
success_msg("This is great! We are done with this module. Time to move on to bigger things!")
```
--- type:MultipleChoiceExercise lang:r xp:0 skills:1 key:011b43bb92
## End of Section

This is the end of the programming assignment for this section. If you've completed the assignments from the other sections, check your progress bar in the edx course!



*** =instructions
- Wait wait..
- Let's continue
*** =hint


*** =pre_exercise_code
```{r}

```

*** =sct
```{r}

```

