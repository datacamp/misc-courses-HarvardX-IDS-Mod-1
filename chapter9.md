---
title       : 9. Programming Basics
description : 

--- type:MultipleChoiceExercise lang:r xp:50 skills:1 key:ba015a0cbd
## 1. Conditional expressions

What will this conditional expression return?
Run it from the console. 

(Type the commands or copy and paste them in the console, and hit ENTER on your keyboard.)



```{r}
x <- c(1,2,-3,4)
if(all(x>0 & x<10)){
  print("All between 0 and 10 (non-inclusive)")
}else{
  print("Some are out of range")
}
```

*** =instructions
- All between 0 and 10 (non-inclusive)
- Some are out of range
- N/A
- None of the above

*** =hint
Are all the numbers stored in `x` between 0 and 10?

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
## 2. Logical operators

Which of the following expressions is always `TRUE` when at least one entry of a logical vector x is `FALSE`?

(You could try an example in the R console.)


*** =instructions
- all(x)
- any(!x)
- all(!x)

*** =hint

*** =pre_exercise_code
```{r}
# no pec
```

*** =sct
```{r}
msg1 = "Check the question again. Try an example in the R console."
msg2 = "Good job! Let us move to the next question."
msg3 = "Try again! Try an example on the R console."
test_mc(correct = 2, feedback_msgs = c(msg1,msg2,msg3))
```







--- type:NormalExercise lang:r xp:100 skills:1 key:9e33032243
## 3. More conditional expressions

In this exercise, you will use `ifelse()` function to modify a dataframe based on a condition. 

In the `murders` dataset, you will apply `ifelse` on the `state` column, change the names of states to lower case if the states' name begines with "M" or a letter that comes after "M" in the alphabet. If the states' name begins with a letter before "M", keep the states' name as is. 

The functions you would need are: `tolower()` and `cbind()`. 

The function `tolower()` changes all your characters to lower case, for example:

```{r}
state_lower <- tolower(murders$state)
```

The function `cbind()` appends a column to an existing dataset. For example, 

```{r}
murders <- cbind(murders, new_column)
```

*** =instructions

- In an object `new_names`, use `ifelse` to assign the lower case state name when the state name begins with "M" or a letter that comes after "M" in the alphabet, and keep the state name, when the name begins with a letter before "M"
    - Use operators `<`,`>`,`=` etc in the condition to make the comparison
- Use `cbind()` to append `new_names` to the `murders` dataset
- In the console, run `murders$new_names` and check how the output has changed

*** =hint
R uses logical operators (>, <, ==, etc.) to compare the order of characters in the alphabet. Play with it in the R console!

*** =pre_exercise_code
```{r}
library(dslabs)
```

*** =sample_code
```{r}
# Create new_names using ifelse()

# Append new_names to murders

```

*** =solution
```{r}
# Create new_names using ifelse()
new_names <- ifelse(murders$state>"M", tolower(murders$state), murders$state)

# Append new_names to murders as a new column
murders<-cbind(murders, new_names)
```

*** =sct
```{r}
test_object("new_names")
test_function("ifelse", args = c("test", "yes", "no"))
test_object("murders")
test_error()
success_msg("Woohoo! You're becoming a pro at this!")
```






--- type:NormalExercise lang:r xp:100 skills:1 key:8232e54e7b

## 4. Write your own functions (1)

You will encounter situations where the function you need has not been defined in R. In such cases, you can write your own function. 

In this exercise, you will practice writing a `function` in R. The functions you define can have multiple arguments as well as default values.

Recall that the general syntax of a `function` is

```{r}
my_function <- function(x){
operations that operate on x, defined by user of the function, with final line returning the value
}
```

*** =instructions
- Create a function `max_total` to take `murders` as the argument
- Within the function, use `max()` to find out the index of the highest `x$total` corresponding to the state with largest number of murders
- Return the name of the state using this index 
- Pass `murders` as an argument to the `max_total` function and check the result 

*** =hint
Use `$` and `[]` on `murders` in the body of your function to determine which state has the most gun murders.

*** =pre_exercise_code
```{r}
load(url("http://s3.amazonaws.com/assets.datacamp.com/production/course_3073/datasets/murders.rda"))
```

*** =sample_code
```{r}
# Create function max_total


# Find out the state with the most murders in the murders data set


```

*** =solution
```{r}

# Create function max_total  
max_total<-function(x){
max <- x$total==max(x$total) 
x$state[max]
}

# Create function max_total (same function but in one line of code) 
# max_total<-function(x){x[x$total==max(x$total),]$state}

# Find out the state with the most murders in the murders data set
max_total(murders)
```

*** =sct
```{r}
test_error()
test_function_definition("max_total",
                        function_test = {
                        test_expression_result("max_total(murders)")
                        },
                        body_test = {
                        test_function("max")
                        })
test_output_contains("max_total(murders)")
success_msg("This is awesome! You just wrote a function in R!")
```






--- type:NormalExercise lang:r xp:100 skills:1 key:eb931680e3

## 5. Write your own functions (2)

The functions you define can have multiple arguments as well as default values.
In this exercise, you will write a more complicated function to get information about `murders`. 

Your function will take `murders` as the argument, and for a given value of `n`, will print the names of states that have more than `n` gun murders. Set `n` to a value of `100` in the function. 

*** =instructions
- Create a function `nplus_states` that takes `murders` as an argument 
- Set `n = 100` along with the argument `x` in the function
- Within the function, extract the indices of states with that have more than `n` gun murders
- Print the names of those states

*** =hint

*** =pre_exercise_code
```{r}
load(url("http://s3.amazonaws.com/assets.datacamp.com/production/course_3073/datasets/murders.rda"))
```

*** =sample_code
```{r}
# Create function nplus_states


# Find out the states that have more than 100 gun murders

```

*** =solution
```{r}
# Create function nplus_states (in one line) 
nplus_states<-function(x, n=100){x[x$total>n,]$state}

# Create function nplus_states (in two lines) 
    # nplus_states<-function(x, n=100){
    # ind <- x$total >= n
    # x$state[ind]
    # }

# Find out the states that have more than 100 gun murders
nplus_states(murders)
```

*** =sct
```{r}
test_error()
test_function_definition("nplus_states",
                        function_test = {
                        test_expression_result("nplus_states(murders)")
		  test_expression_result("nplus_states(murders, 100)")
                        })
#test_output_contains("rate_per_n(murders)")
success_msg("Great! You can write much cooler functions now!")
```




--- type:NormalExercise lang:r xp:100 skills:1 key:6544013f7c

## 6. Function environment

Keep in mind that variables defined in a function only hold within the function environment and does not affect the value of the variable anywhere else.

For this exercise, consider the following code: 

```{r}
x <- 3
y <- 1
func1 <- function(x, y=2){
		y+x
		}
func2 <- function(x){
		x<-5
		func1(x)}
func2(1)
```

*** =instructions

- Examine the code above
- Assuming you run the whole code, find out the values of x and y at the end
- Assign those values to x and y in `script.R` section
- Submit Answer to check if your answer is correct 
- Run the code below separately to check if your answer was correct 


*** =hint

Try to answer the question before running the code in the R console!

*** =pre_exercise_code
```{r}
# no pec
```

*** =sample_code
```{r}
#Assign the right value to x and y

```

*** =solution
```{r}
#Assign the right value to x and y
x<-3
y<-1

```

*** =sct
```{r}
test_error()
test_object("x", incorrect_msg = "The default value of a variable is only valid within the scope of the function!")
test_object("y", incorrect_msg = "Be mindful where `y` is called!")
success_msg("Good job! Your knowledge of functions in R is getting stronger.")
```




--- type:NormalExercise lang:r xp:100 skills:1 key:75bc32926c

## 7. Define a variable within your function

Recall from an earlier exercise that you wrote a function to find out the state with the most gun murders. 

In this exercise, you will find out the state with the highest gun murder rate.

When you start writing more complicated functions, you will find breaking down the steps and creating new variables along the way to be very helpful. 

And don’t worry about messing up your working environment because all variables defined within a function are only valid when the function is being called!

*** =instructions
- Create a function `max_rate` that takes `murders` as the argument 
- Calculate `x$murder_rate` as `x$total/x$population`
- Find the index of the highest murder rate 
- Print the name of the corresponding state 

*** =hint
Create a new variable `murder_rate` and append it to the `murders` data set so you can use its values in the conditional expression.
Use the `max()` function. 


*** =pre_exercise_code
```{r}
load(url("http://s3.amazonaws.com/assets.datacamp.com/production/course_3073/datasets/murders.rda"))
```

*** =sample_code
```{r}
# Create function max_rate


# Find out the state with the highest murder rate


```

*** =solution
```{r}
# This is a possible sample function. You could achieve the same result with other commands as well. 
max_rate<-function(x){x$murder_rate<-x$total/x$population
			    max_murder_rate<-max(x$murder_rate)
                                    row_max_rate<-x[x$murder_rate==max_murder_rate,]
                                    row_max_rate$state}

# Find out the state with the highest murder rate
max_rate(murders)

```

*** =sct
```{r}
test_error()
test_function_definition("max_rate",
                        function_test = {
                        test_expression_result("max_rate(murders)")
                        },
                        body_test = {
                        test_function("max")
                        })
success_msg("This is awesome! You will now be able to write better functions!")
```





--- type:NormalExercise lang:r xp:100 skills:1 key:340b9eba39
## 8. Control flow statement: for loop

Recall that in an earlier exercise, you changed the names of states that begins with an "M" or a letter that comes after "M" to lower case using the `ifelse()` function. 

In this exercise, do the same with an `if()` statement and a `for` loop.  

*** =instructions
- Create a vector `new_namses2` as an empty vector 
- Start the `for` loop iterating for as many times as there are rows in `murders` 
- Using `if` and `else` commands, compare each state's name with "M" as you did in the previous exercise, change them to lower case if they begin with or come after "M", and keep them as is otherwise
- Print `new_names2`

*** =hint
Use `i in 1:nrow(murders)` to loop through all rows of the data frame.

*** =pre_exercise_code
```{r}
load(url("http://s3.amazonaws.com/assets.datacamp.com/production/course_3073/datasets/murders.rda"))
```

*** =sample_code
```{r}
# Create new_names2 using if() for for()

# Print new_names2

```

*** =solution
```{r}
# Create new_names2 using if() for for()
new_names2<- vector()
for(i in 1:nrow(murders)){
  if(murders$state[i]>="M"){
      new_names2[i] <- tolower(murders$state[i])
  }else{
      new_names2[i] <- murders$state[i]
    }
  }

# Print new_names2
print(new_names2)

```

*** =sct
```{r}
test_for_loop(cond_test = test_student_typed("in 1:nrow(murders)", not_typed_msg = "You can use `(i in 1:nrow(murders))` to define your for loop."),
                expr_test = test_function("tolower"),
                not_found_msg = "Make sure to code a for loop in the first place!")
test_output_contains("print(new_names2)")
test_error()
success_msg("Awesome! You've learnt to use loops within functions.")
```






--- type:NormalExercise lang:r xp:100 skills:1 key:cb64a8f82d

## 9. Check matching of values

You used `ifelse()` function and separately, 'for' loop and 'if()` function to achieve the same task of renaming the states based on a given condition. 

In this exercise, you will compare them to check if they are identical or not. You can do this with the `identical()` function. 
`identical(x,y)` compares x and y, and returns `TRUE` if they are identical. 

*** =instructions

- Use `identical()` function to compare `new_names2` and `new_names`. Both values are pre-loaded into your environment.

*** =hint



*** =pre_exercise_code
```{r}
load(url("http://s3.amazonaws.com/assets.datacamp.com/production/course_3073/datasets/murders.rda"))

new_names2<- vector()
for(i in 1:nrow(murders)){
  if(murders$state[i]>="M"){
      new_names2[i] <- tolower(murders$state[i])
  }else{
      new_names2[i] <- murders$state[i]
    }
  }

new_names <- ifelse(murders$state>"M", tolower(murders$state), murders$state)
```

*** =sample_code
```{r}
# Compare new_names and new_names2 using identical()

```

*** =solution
```{r}
# Compare new_names and new_names2 using identical()
identical(new_names, new_names2)

```

*** =sct
```{r}
test_output_contains("identical(new_names, new_names2)", incorrect_msg = "Check that you used `identical()` correctly!")
test_error()
success_msg("This is great! Go to the last question of this module!")
```





--- type:NormalExercise lang:r xp:100 skills:1,3 key:81431dc1d4

## 10. For loops and plots

In this exercise, you will use `for` loop to generate vectors that meet a given condition from the `murders` dataset, and plot those vectors. 

You will need to use the `append()` function, which is used as follows: 
`x <- append(x, a[2])` will append the element `a[2]` to vector `x`. 


*** =instructions
- Create a function `dangerous` that takes `murders` and `n` as arguments 
- Define `x`  and `y` as empty vectors
- Define `data$rate` as `data$total/data$population*100000` 
- In a `for` loop, compare `data$rate` for each element with `n` using `if` 
    - If it is greater, use `append()` function to append the `data$population[i]` in `x` and `data$total[i]` in `y`
- End the loop and plot x against y 
- Call the function `dangerous` with `(murders, 3)` as arguments where 3 corresponds to argument `n` 


*** =hint

*** =pre_exercise_code
```{r}
load(url("http://s3.amazonaws.com/assets.datacamp.com/production/course_3073/datasets/murders.rda"))
```

*** =sample_code
```{r}
#  Create the function


# Create the plot when n=3

```

*** =solution
```{r}
#  Create the function
dangerous<-function(data, n){
	x <- vector()
	y <- vector()
	data$rate <- data$total/data$population*100000
	for(i in 1:nrow(data)){
		if(data$rate[i] > n){
			x <- append(x, data$population[i])
			y <- append(y, data$total[i])
		}
	}
	plot(x, y)
}


# Create the plot when n=3
dangerous(murders, 3)

```

*** =sct
```{r}
test_error()
test_function_definition("dangerous",
                        function_test = {
                        test_expression_result("dangerous(murders, 3)")
                        },
                        body_test = {
                        test_function("plot")
                        })
success_msg("Wonderful! You have completed all the exercises in this chapter!")
```
