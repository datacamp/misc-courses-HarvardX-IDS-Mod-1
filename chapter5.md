---
title       : Vector Arithmetics 
description : We will learn about the more powerful vector arithmetic functions in R, that help us solve higher-level problems. 
--- type:NormalExercise lang:r xp:100 skills:1 key:748a24d3ef
## 1. Arithmetic Funtions 1

Previously we created this data frame:

`temp <- c(35, 88, 42, 84, 81, 30)`
`city <- c("Beijing", "Lagos", "Paris", "Rio de Janeiro", "San Juan", "Toronto")`
`city_temps <- data.frame(name = city, temperature = temp)`


*** =instructions

Remake the data frame using the code above but add a line that converts the temperature from farenheit to celsius. 

*** =hint
The conversion rate is: `degree Farenheit* 9/5 + 32 = degree celsius` 

*** =pre_exercise_code
```{r}
#no pec
```

*** =sample_code
```{r}
# Store temperature values in `temp`


# Convert temperature into celsius and restore in `temp`


# Assign city names to `city` 


# Create data frame `city_temps` 


```

*** =solution
```{r}
# Store temperature values in `temp`
temp <- c(35, 88, 42, 84, 81, 30)

# Convert temperature into celsius and restore in `temp`
temp <- (temp - 32)*5/9

# Assign city names to `city` 
city <- c("Beijing", "Lagos", "Paris", "Rio de Janeiro", "San Juan", "Toronto")

# Create data frame `city_temps` 
city_temps <- data.frame(name = city, temperature = temp)

```

*** =sct
```{r}
test_error()
test_object("temp", undefined_msg = "Define temp first.", incorrect_msg = "Store values of temperature!")
test_object("temp", incorrect_msg = "Change from Farenheit to Celsius using `temp <- (temp - 32)*5/9`.")
test_object("city", incorrect_msg = "Store names of cities.")
test_object("city_temps", incorrect_msg = "Create a dataframe following the same example.")
success_msg("Great job!")

```
----

--- type:NormalExercise lang:r xp:100 skills:1 key:7826d7fccc
## 2. Arithmetic Funtions 2

We can solve complex equations, combining the simple commands that we've learnt so far. 

*** =instructions

What is the sum of the following equation: `1 + 1/2^2 + 1/3^2 + ... + 1/100^2`? Use command `sum(1/x^2)`. 

*** =hint
Thanks to Euler we know it should be close to $\pi^2/6$.

*** =pre_exercise_code
```{r}
# no pec 
```

*** =sample_code
```{r}
# Store the numbers 1-100, in a sequence, in vector `x`

# Sum the equation 

```

*** =solution
```{r}
# Store the numbers 1-100, in a sequence, in vector `x`
x <- seq(1,100)

# Sum the equation 
sum(1/x^2) 
```

*** =sct
```{r}
test_error()
test_object("x", undefined_msg = "Define x first!", incorrect_msg = "Use the sequence command to store 1,100 in x.")
test_function("sum", incorrect_msg = "Use the code given in the instructions.")
success_msg("Good job!")
```
----

--- type:NormalExercise lang:r xp:100 skills:1 key:39eec07e4a
## 3. Arithmetic Funtions 3


*** =instructions
Compute the per 100,000 murder rate for each state and store it in the object `murder_rate`. 
Then compute the average murder rate for the US using the function `mean`. What is the average?

*** =hint

*** =pre_exercise_code
```{r}
load(url("http://s3.amazonaws.com/assets.datacamp.com/production/course_3073/datasets/murders.rda"))
```

*** =sample_code
```{r}
# Store the per 100,000 murder rate for each state in `murder_rate`


# Calculate the average murder rate in the US 


```

*** =solution
```{r}

# Store the per 100,000 murder rate for each state in `murder_rate`
murder_rate <- murders$total/murders$population*100000

# Calculate the average murder rate in the US
mean(murder_rate)
```

*** =sct
```{r}
test_error()
test_object("murder_rate", incorrect_msg = "")
test_function("mean", incorrect_msg = "")
success_msg("Awesome!")

```
----
--- type:MultipleChoiceExercise lang:r xp:0 skills:1 key:011b43bb92
## End of Section

This is the end of the programming assignment for this section. You can close this window and go back to the course, or you can keep working with the programming part for the next section.



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
