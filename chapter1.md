---
title                : R Basics 
author_field         : 
description          : In this course we introduce you to the basics of computing and analyzing data in the user-friendly and helpful R interface. This first chapter starts with the very basics of functions, objects to get us acquainted with the world of R. 
author_bio           : 
university           : HarvardX 
difficulty level     : 1
time needed          : Approximately 1 hour for each section 
programming language : R 
--- type:NormalExercise lang:r xp:100 skills:1 key:4360ba27cf

## Using variables 1

What is the sum of the first $n$ positive integers? We can use the formula $n(n+1)/2$ to quickly compute this quantity.


*** =instructions
 
Define 'n=100' and then use R to compute the sum of 1 through 100 using the given formula.What is the sum?


*** =hint

Follow the sample code in the editor. 


*** =pre_exercise_code
```{r}
# no pec
``` 

*** =sample_code
```{r}
# Here is how you compute the sum for the first 20 integers

20*(20+1)/2 

## However, we can define a variable to use the formula for other values of n

n <- 20
n*(n+1)/2

n <- 25
n*(n+1)/2

# Below, write your code to calculate the sum of the first 100 integers 


```

*** =solution
```{r}
# Here is how you compute the sum for the first 20 integers

20*(20+1)/2 

## However, we can define a variable and then use the same formula for other values of n

n <- 20
n*(n+1)/2

n <- 25
n*(n+1)/2

# Below, write your code to calculate the sum of the first 100 integers 

# Define the n to be 100 then calculate the sum with the formula
n <- 100
n*(n+1)/2 
```

*** =sct
```{r}

# first instruction  
test_object("n", incorrect_msg = "Something is wrong with `n`. Make sure you have assigned the correct value to `n`.")

# second instruction
test_output_contains ("(n*(n+1)/2)", incorrect_msg = "Take a look at your code for the second instruction.")

# General 
test_error() 
success_msg("Good job ! Let`s apply this to another question")
```
----


--- type:NormalExercise lang:r xp:100 skills:1 key:d1735adac6

##  Using variables 2

*** =instructions

Use the same formula as the first question to compute the sum of the integers from 1 through 1,000:

*** =hint

Same formula as the last exercise 

*** =pre_exercise_code
```{r}
# no pec
``` 

*** =sample_code
```{r}
# Below, write you code to calculate the sum of the first 1000 integers 

``` 

*** =solution
```{r}
# Below, write you code to calculate the sum of the first 1000 integers 
n <- 1000
n*(n+1)/2

```

*** =sct
```{r}

# first instruction  
test_object("n", incorrect_msg = "Something is wrong with `n`. Make sure you have assigned the correct value to `n`.")

# second instruction
test_output_contains ("(n*(n+1)/2)", incorrect_msg = "Take a look at your code for the second instruction.")

# General 
test_error() 
success_msg("Good job ! Let`s get to work on another question!")
```
----
--- type:MultipleChoiceExercise lang:r xp:50 skills:1 key:ba448c1da3

## Functions

Run the following code in the R console:

```{r, eval=FALSE}
n <- 1000
x <- seq(1,n)
sum(x)
```

Based on the result, what do you think the functions `seq` and `sum` do? You can use the help system:

*** =instructions
- sum creates a list of numbers and seq adds them up. 
- seq creates a list of numbers and sum adds them up. 
- seq computes the difference between two arguments and sum computes the sum of 1 through 1000. 
- sum always returns the same number

*** =hint
What do the words seq and sum mean generally?

*** =pre_exercise_code
```{r}
# no pec
```

*** =sample_code
```{r}
n <- 1000
x <- seq(1,n)
sum(x)
``` 

*** =sct
```{r}
msg1 = "Try again! Think about the meaning of the words."
msg2 = "Well done. Proceed to the next exercise"
msg3 = "There`s no specificaton of 1 to 1000 for sum. Try again."
msg4 = "Sum doesn't work with one number."
test_mc(correct = 2, feedback_msgs = c(msg1,msg2,msg3,msg4))
```
--- type:NormalExercise lang:r xp:100 skills:1 key:26f2e309a3

## Nested function calls 1
In math and programming we say we evaluate a function when we replace the argument with a given number. So if we type `log2(16)` we evaluate the `log2` function to get the log to the base 2 of `16` which is `4`. 

In R it is often useful to evaluate a function inside another function. 
For example, `sqrt(log2(16))` will calculate the log to the base 2 of 16 and then compute the square root of that value. So the first evaluation  gives a 4 and this gets evaluated by `sqrt` to give the final answer of 2.  


*** =instructions

Use one line of code to compute the log, to the base 10, of the square root of 100.


*** =hint
The sqrt function comes before the log function in this case. 

*** =pre_exercise_code
```{r}
#no pec
```

*** =sample_code
```{r}
# log to the base 2 
log2(16)

# sqrt of the log to the base 2 of 16:
sqrt(log2(16))

# Compute log to the base 10 (log10) of the sqrt of 100

```

*** =solution
```{r}
# log to the base 2 
log2(16)

# sqrt of the log to the base 2 of 16:
sqrt(log2(16))

# Compute log to the base 10 of the sqrt of 100
log10(sqrt(100))

```

*** =sct
```{r}

test_output_contains ("log10(sqrt(100))", times = 1, incorrect_msg = "Make sure you mentioned the base and put the sqrt function in parenthesis.")
test_error() 
success_msg("Very good!")

```
----
--- type:MultipleChoiceExercise lang:r xp:50 skills:1 key:df508b6664
## Nested functions call 2

Which of the following will always return the numeric value stored in `x`? You can try out examples and use the help system in the R console.

*** =instructions
- `log(10^x)`
- `log10(x^10)`
- `log(exp(x))`
- `exp(log(x, base = 2))`

*** =hint

The question asks you about the numeric value of `x`, not the log of anything. 

*** =pre_exercise_code
```{r}
#no pec
```

*** =sct
```{r}
msg1 = "Try again! Read the question again."
msg2 = "Try again! Read the question carefully."
msg3 = "Well done. Proceed to the next exercise"
msg4 = "Try again! Check what the question is asking for"
test_mc(correct = 3, feedback_msgs = c(msg1,msg2,msg3,msg4))
```
----

--- type:VideoExercise lang:r aspect_ratio:0 xp:0 skills:1 key:011b43bb92


## End of Section

This is the end of the programming assignment for this section. 

You can now close this window to go back to the <a href='https://courses.edx.org/courses/course-v1:HarvardX+PH125.1x+2T2017/courseware/cfded5c208bc4e379606cb712cc54f25/5ba06674d0be41b99185b947e09e889b/?child=first'>course</a>.

If you want to continue the assessments without watching the videos, you can click on the arrow above to get the next exercise or hit Ctrl-K.

----
