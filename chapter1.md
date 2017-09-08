---
title       : 1. R Basics
description :

--- type:NormalExercise lang:r xp:100 skills:1 key:bf96ea1498
## 1. Variables and Simple Arithmetic Operations 

In this exercise, you will store numbers in variables and perform calculations on them.  

It is good practice to define variables instead of typing the values everytime you need them. This way, once you change
the value of a variable, it will be automatically updated everywhere in your code.

Remember, R does not show any results when you store a value. If you make an error, an error message will pop up on the screen after you submit the answer.

Note how `#` is used to make comments. Comments won't run as code.

Consider this problem: The book Harry Potter and the Goblet of Fire(part 4) sold $55 million$ copies and one of its sequel books, Harry Potter and the Deathly Hallows(part 7) sold $50 million$ copies. What is the combined sale of the two books? 

*** =instructions
- Assign the number of books sold (in millions) to hp4 and hp7 variables 
- Add the variables to calculate the total number of books sold

*** =hint

*** =pre_exercise_code
```{r}
#no pec
```

*** =sample_code
```{r}
# Example: Assign/ Store values in variables
drinks <- 200
fries <- 100

# Example: How much was the total food sale?
drinks + fries

# Assign values (number of copies sold) to hp4 and hp7


# Total number of copies sold?


```

*** =solution
```{r}
# Example: Assign/ Store values in variables
drinks <- 200
fries <- 100

# Example: How much was the total food sale?
drinks + fries

# Assign values (number of copies sold) to hp4 and hp7
hp4 <- 55
hp7 <- 50

# Total number of copies sold?
hp4 + hp7
```

*** =sct
```{r}
test_error()
test_object("hp4", undefined_msg = "Define hp4 first.", incorrect_msg = "Check the numbers.")
test_object("hp7", undefined_msg = "Define hp7 first.", incorrect_msg = "Check the numbers.")
test_output_contains("hp4 + hp7", incorrect_msg = "You need to add the 2 variables.")
success_msg("Great job! You can perform all mathematical calculations similarly!")
```
----

--- type:NormalExercise lang:r xp:100 skills:1 key:1e3753c95a
## 2. Comparison operations: Less than, Greater than, Equal to

You can use the lesser than (<) , greater than (>) and equal to (=) operators, to determine if the values are lesser, greater or equal to one another. When you use these operators, R compares the variables and returns `TRUE` or `FALSE` depending on the values stored in the variables. 

For example, typing `5>5`, would yield the result `FALSE` and typing `6>5`, would yield `TRUE`.
Remember, in R, to say that `5 is equal to 5`, we need to type `5==5`. The double equal to sign indicates that 5 is equal to 5.

Consider this problem: At the beginning of the a match, Team A scored 15 points and Team B, their opponent, scored 165 points. At the last moment, Harry from Team A scored 150 points. Determine if the teams scored equal number of points. 

*** =instructions
- Assign total scores to `teamA` and `teamB` variables
- Use the appropriate operator to compare them


*** =hint
What comparison does the problem want you to perform? (> or < or = ?)

Which number is lesser than, greater than or equal to the other?


*** =pre_exercise_code
```{r}
#no pec
```

*** =sample_code
```{r}
# Assign total scores to `teamA` and `teamB`


# Check and determine the outcome of the match using the correct operator


```

*** =solution
```{r}
# Assign total scores to `teamA` and `teamB`
teamA <- 15 + 150
teamB <- 165

# Check and determine the outcome of the match using the correct operator
teamA == teamB
```

*** =sct
```{r}
test_error()
test_object("teamA", undefined_msg = "Define teamA first.", incorrect_msg = "Add the scores for teamA.")
test_object("teamB", undefined_msg = "Define teamB first.", incorrect_msg = "Store the score for teamB.")
test_output_contains("teamA == teamB", incorrect_msg = "Check whether they are equal.")
success_msg("Yes! It was a draw!")
```
----

--- type:NormalExercise lang:r xp:100 skills:1 key:6d8c3c5f06
## 3. Arithmetic Operations: Logarithms

You can generally use R as a calculator, including calculating logs of numbers. 

- `log(x)` calculates the natural logarithm of variable `x`. 
- `log2(x)` or `log(x, base = 2)` calculates log to the base 2 of `x`. 
- `log10(x)` or `log(x, base = 10)` calculates log to the base 10 of `x`.

Look at an example in the console on the right window.

Consider the problem: A certain species of bacteria doubles itself after 1 hour. At t=0, there are 2 bacteria. After how many hours, will there be 128 bacteria? 

*** =instructions
- Apply log to the appropriate base for the final number of bacteria 


*** =hint
If x^y=z, then, y = log(z, base = x).

Here, x = 2 and z = 128. 

*** =pre_exercise_code
```{r}
# no pec
```

*** =sample_code
```{r}
# Calculate the square root of x = 25
sqrt(25)

# Calculate the log of (sqrt of 25) to the base 10
log10(sqrt(25))
# same as `log(25, base = 10)`

# Calculate the log of 128 to the appropriate base to find the time. 


```

*** =solution
```{r}
# Calculate the square root of x = 25
sqrt(25)

# Calculate the log of (sqrt of 25) to the base 10
log10(sqrt(25))
# same as `log(25, base = 10)`

# Calculate the log of 128 to the appropriate base to find the time. 
log2(128) 
```

*** =sct
```{r}
test_error()
test_function("log2", incorrect_msg = "Check the code.")
success_msg("That was great! So, in 7 hours, the bacteria would have replicated to become 128 in number!")
```
----

--- type:NormalExercise lang:r xp:100 skills:1 key:da368a277f
## 4. Advanced Arithmetic Operations 

Now, calculate the total area of house and ground if `length` = $40 feet$, `width` = $30 feet$, and the `radius` of the semi-circular ground = $15 feet$.

- `Area of rectangle = length * width`
- `Area of a semi-circle: ½*pi*r^2 (pi = 3.14)`


*** =instructions

- Calculate the area of the house and store it in `area_h`
- Calculate the area of the ground and store it in `area_g`
- Calculate the total area and store it in `total_area`
- Print the total area

*** =hint
Use the formula for area of rectangle + area of semi-circle.

*** =pre_exercise_code
```{r}
# no pec
```

*** =sample_code
```{r}
# Calculate the area of the house and store it in `area_h`


# Calculate the area of the ground and store it in `area_g`


# Calculate the total area combining the house and ground and store it in `total_area`


# Print the total area 


```

*** =solution
```{r}
# Calculate the area of the house and store it in `area_h`
area_h<- 40*30

# Calculate the area of the grounds and store it in `area_g`
area_g <- 1/2*pi*15^2

# Calculate the total area combining the house and grounds and store it in `total_area`
total_area <- area_h + area_g

# Print the total area 
total_area

```

*** =sct
```{r}
test_error()
test_object("area_h", undefined_msg = "Define area_h first.", incorrect_msg = "Calculate the area of the house.")
test_object("area_g", undefined_msg = "Define area_g first.", incorrect_msg = "Caculate the area of the grounds.")
test_object("total_area", undefined_msg = "Define total_area.", incorrect_msg = "Add the 2 areas.")
success_msg("Awesome job!")
```
----

--- type:NormalExercise lang:r xp:100 skills:1 key:4d6f2e8e26
## 5. Calculating Speed from Distance and Time

Consider the problem: Calculate the average speed (miles/hour) of the Hogwarts Express train from London to Hogwarts, if it  travels $200 miles$ and takes $4 hours$.

*** =instructions
- Store the distance and time values in the respective variables 
- Calculate the average speed and store it in a variable 
- Print the average speed

*** =hint
Formula for speed = distance / time

*** =pre_exercise_code
```{r}
#no pec
```

*** =sample_code
```{r}
# Store the distance travelled  in `distance`and time taken in `time`



# Calculate the average speed and store it in `avg_speed`



# Remember that R doesn’t automatically print any output; so print the average speed


```

*** =solution
```{r}
# Store the distance travelled  in `distance`and time taken in `time`
distance<-200
time <- 4

# Calculate the average speed and store it in `avg_speed`
avg_speed<- distance/time

# Remember that R doesn’t automatically print any output; so print the average speed
avg_speed
```

*** =sct
```{r}
test_error()
test_object("distance", undefined_msg = "Define distance.", incorrect_msg = "Store the value for distance.")
test_object("time", undefined_msg = "Define time first.", incorrect_msg = "Store the value for time.")
test_object("avg_speed", undefined_msg = "Define avg_speed.", incorrect_msg = "Use the formula for average speed.")
test_output_contains("avg_speed", incorrect_msg = "Just type avg_speed.")
success_msg("That’s great! You’re getting really good at this!")
```
----
