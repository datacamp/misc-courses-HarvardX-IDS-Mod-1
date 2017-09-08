---
title       : 3. Vectors
description :

--- type:NormalExercise lang:r xp:100 skills:1 key:ddf0db0f7d

## 1. Character vector

Vectors are one-dimensional arrays that can store different types of data such as numeric data, character data, and logical data. 
In R, you create a vector with the concatenate function `c()`.  

See how you would create a character vector in the sample code.

*** =instructions

- Create a character vector `desserts` using the function `c()` with names of 5 desserts: "cheesecake", "chocolate mousse", "brownie", "apple pie", "pudding"
- print `desserts` and observe the output

*** =hint
Be sure to place the names within double inverted commas.

*** =pre_exercise_code
```{r}
#no pec
```

*** =sample_code
```{r}
# Example: Create a character vector to store the different types of food items and assign it to `food`
food <- c("pizza", "burgers", "salads", "cheese", "pasta")

# Create a character vector to store the names of 5 desserts and assign it to `desserts`


# Print the vector `desserts`


```

*** =solution
```{r}
# Example: Create a character vector to store the different types of food items and assign it to `food`
food <- c("pizza", "burgers", "salads", "cheese", "pasta")

# Create a character vector to store the names of 5 desserts and assign it to `desserts`
desserts <- c("cheesecake", "chocolate mousse", "brownie", "apple pie", "pudding")

# Print the vector `desserts`
desserts

```

*** =sct
```{r}
test_error()
test_object("desserts", incorrect_msg = "Each of the dessert names need inverted commas.")
test_object("desserts", incorrect_msg = "Check the spelling of the variable")
success_msg("Good job! Do you want to now try creating a numeric vector!?")
```
----

--- type:NormalExercise lang:r xp:100 skills:1 key:5e66879c2c

## 2. Numeric Vector  

Now, you will create a numeric vector. The main difference between a numeric and character vector is that you don't need quotation marks in numeric vector. 

See how you would create a numeric vector in the sample code.

*** =instructions

- Create a numeric vector `calories` with the calories of the desserts from the previous exercise: 257, 355, 243, 411, 288
- Type `calories` in the console to observe how the output looks like

*** =hint
Make sure your numbers are within parenthesis and have commas separating them.

*** =pre_exercise_code
```{r}
#no pec
```

*** =sample_code
```{r}
# Example: Create a numeric vector to store the cost of different food items and assign it to `cost`
cost <- c(50, 75, 90, 100, 150)

# Create a numeric vector to store the calories of the desserts and assign it to `calories`


```

*** =solution
```{r}
# Example: Create a numeric vector to store the cost of different food items and assign it to `cost`
cost <- c(50, 75, 90, 100, 150)

# Create a numeric vector to store the calories of the desserts and assign it to `calories`
calories <- c(257, 355, 243, 411, 288)

```

*** =sct
```{r}
test_error()
test_object("calories", incorrect_msg = "Check to match the numbers from the question!")
success_msg("Awesome! Now you've learnt to create both numeric and character vectors!")
```
----

--- type:NormalExercise lang:r xp:100 skills:1 key:c0b17dfdc7
## 3. Named Vector

When you defined the numeric vector in the previous exercise, you listed the numbers in the same order as the desserts' names in the first exercise. Now, you will learn to use the character vector to name the numeric vector elements. 

You use the `names()` function to do this. 

`names(num_vct) <- char_vct` will name the numbers in the numeric vector `num_vct` with the elements in the character vector `char_vct`.  

You can see an example of how this is done in the sample code.

*** =instructions
- Use the `names()` function and the objects defined in the previous exercises to give the numeric values (calories) their corresponding names (desserts)
- Type `calories` in the console and observe how the vector has changed

*** =hint
Assign names to the numeric values. 

*** =pre_exercise_code
```{r}
#no pec
```

*** =sample_code
```{r}
# Example 1: Name directly and print
codes <- c("italy" = 380, "canada" = 124, "egypt" = 818)
codes

# Example 2: Or indirectly using `names()` and print 
codes <- c(380, 124, 818)
countries <- c("italy", "canada", "egypt")
names(codes) <- countries
codes

# Dessert names and calories from the previous question
desserts <- c("cheesecake", "chocolate mousse", "brownie", "apple pie", "pudding")
calories <- c(257, 355, 243, 411, 288)

# Associate the dessert with the calories using the `names` function


```

*** =solution
```{r}
# Example 1: Name directly and print
codes <- c("italy" = 380, "canada" = 124, "egypt" = 818)
codes

# Example 2: Or indirectly using `names()` and print 
codes <- c(380, 124, 818)
countries <- c("italy", "canada", "egypt")
names(codes) <- countries
codes

# Dessert names and calories from the previous question
desserts <- c("cheesecake", "chocolate mousse", "brownie", "apple pie", "pudding")
calories <- c(257, 355, 243, 411, 288)

# Associate the dessert with the calories using the `names` function
names(calories) <- desserts
```

*** =sct
```{r}
test_error()
test_function("names", incorrect_msg = "The numeric vector should be in the parenthesis.")
success_msg("Great job! You have now learnt to create a named vector!")
```
----
--- type:NormalExercise lang:r xp:100 skills:1 key:6bb68b8400
## 4. Logical Vectors

A logical vector contains `TRUE` or `FALSE` values based on a logical criteria you define. 

For example, if `vct = [2,3,4,1,5]` and you want to find which elements of `v` are less than 4, you can create a logical vector with the following command: 
`lvct <- vct < 4`
This would result in the logical vector `lvct = [TRUE TRUE FALSE TRUE FALSE]`. 

You can use any of the logical operators `<`, `>` or `=`. 

For the purposes of arithmetic operations, the `TRUE` values are dealt as `1` and `FALSE` values as `0`. 

For example, if you run `sum(lvct)`, the answer will be 3, since there are three `TRUE` values in `lvct`. 

Also, you can access the values of `vct` that satisfy the condition you defined above, using the logical vector `lvct` within square brackets `[]`.

For example, `vct[lvct]` will print `2 3 1` since, `lvct` is `TRUE` only for those values of `vct`. 

For this exercise, a dataset `women` is loaded. Follow the instructions to define and print the logical vector.  

*** =instructions
- In an object `weight_rate`, store `women$weight`/ `women$height` 
- Create a logical vector `low` for the condition `weight_rate < 2`
- Find the number of elements in `weight_rate` that meet the above condition using `sum()` function
- Print all the elements in `weight_rate` that meet the above condition using `[]` 
- Print the logical vector `low` and observe the result


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


# Find the number of elements in `weight_rate` that are less than 2



# Print the elements in `weight_rate` that meet the condition 



# Print the logical vector `low`




```

*** =solution
```{r}

# Store the weight rate for each tree, in `weight_rate`
weight_rate<-women$weight/women$height

# Store the `weight_rate < 2` in `low`
low <- weight_rate < 2

# Find the number of elements in `weight_rate` that are less than 2
sum(low)

# Print the elements in `weight_rate` that meet the condition 
weight_rate[low]

# Print the logical vector `low`
low


```

*** =sct
```{r}
test_error()
test_object("weight_rate", undefined_msg = "Define the weight rate first!", incorrect_msg = "Check the formula.")
test_object("low", undefined_msg = "Define low!", incorrect_msg = "It should be weight rates less than 2.")
test_output_contains("sum(low)", incorrect_msg = "Check for syntax of sum(). ")
test_output_contains("weight_rate[low]", incorrect_msg = "Use square brackets to access the elements that meet the logical condition.")
#test_object("", undefined_msg = "Define low!", incorrect_msg = "It should be weight rates less than 2.")
success_msg("Great job! You learnt to use a logical vector!")

```



--- type:NormalExercise lang:r xp:100 skills:1 key:16a977c7ab
## 5. Other ways of creating Vectors

Sometimes, you need to define a variable as a vector without knowing its length, since the variable would be modified over the course of the code.

You can create an empty vector using `vector()` command. You will also come across this command in a later chapter. 

For example, `x <- vector()` creates a variable `x` as a vector with `0` elements. It is possible to add more elements to this vector in the code. 

If you want to create a vector of a fixed length, but with all the elements being of the same value, you can use the `rep()` function as follows: 
`x <- rep(0,10)` would create a vector `x` with all elements as `0` and with a length of `10`. 

You can replace `0` with any number, character or object. 

If you want to create a zero vector with the same length as the number of rows in a dataset, you can use the `nrow` command within the `rep()` command. 

Example: `x <- rep(0, nrow(food))` creates a vector `x` with as many zeroes as the length of the dataset `food`. 


*** =instructions
- Create a vector `x`, run the command and observe the output 
- Assign `3` to 1st element, `20` to 4th element of `x` 
- Use `rep()` to create a vector `y` with all elements = `0` and with same length as that of `women` dataset
- Repeat the above to create a vector `z` with all elements = `"women"`
- Print `x`, `y`, `z` and observe the output

*** =hint
Use `[]` to assign values in `x`. 

Remember to use `nrow()` function when using `rep()`. 


*** =pre_exercise_code
```{r}
library(datasets)
data(women)
```

*** =sample_code
```{r}
# Create a vector `x`


# Assign `3` to 1st element of `x` and `20` to 4th element of `x`


# Create a vector `y` with all elements as `0` and length same as `women` dataset 


# Create a vector `z` with all elements as "women" and length same as `women` dataset


# Print x, y, z



```

*** =solution
```{r}
# Create a vector `x`
x <- vector()

# Assign `3` to 1st element of `x` and `20` to 4th element of `x`
x[1] <- 3
x[4] <- 20

# Create a vector `y` with all elements as `0` and length same as `women` dataset 
y <- rep(0, nrow(women))

# Create a vector `z` with all elements as "women" and length same as `women` dataset
z <- rep("women", nrow(women))

# Print x, y, z
x
y
z

```

*** =sct
```{r}
test_error()
test_object("x", undefined_msg = "Define x as a vector first!", incorrect_msg = "Check for typos")
test_object("x", undefined_msg = "Define x[1]!", incorrect_msg = "It should be 3")
test_object("x", undefined_msg = "Define x[4]!", incorrect_msg = "It should be 20")
test_object("y", undefined_msg = "Define y!", incorrect_msg = "Use nrow() function")
test_object("z", undefined_msg = "Define z!", incorrect_msg = "Use nrow() function")
test_output_contains("x", incorrect_msg = "Print x")
test_output_contains("y", incorrect_msg = "Print y")
test_output_contains("z", incorrect_msg = "Print z")
success_msg("Great job! You can now create vectors in other ways.")
```
--- type:NormalExercise lang:r xp:100 skills:1 key:7c4dfa097b
## 6. Class

When you use R to analyze data, it is always a good practice to keep track of the class of an object. 

You can do that using the `class(<object name>)` command. 

Common classes include: an integer, a numeric value, a character, a logical value, and a factor. 

*** =instructions
Determine the class of `desserts`.

*** =hint

*** =pre_exercise_code
```{r}
#no pec
```

*** =sample_code
```{r}
# Store values for desserts, same as previous question
desserts <- c("cheesecake", "chocolate mousse", "brownie", "apple pie", "pudding")

# Determine the class of `desserts`


```

*** =solution
```{r}
# Store values for desserts, same as previous question
desserts <- c("cheesecake", "chocolate mousse", "brownie", "apple pie", "pudding")

# Determine the class of `desserts`
class(desserts)
```

*** =sct
```{r}
test_error()
test_output_contains("class(desserts)", incorrect_msg = "Don't put desserts within parenthesis.")
success_msg("That's great! Let's use some operators on this data now.")
```
----

--- type:NormalExercise lang:r xp:100 skills:1 key:925fcceb04
## 7. Indexing Vector Elements (Part 1)

If you want to display only select values from a vector, R can help you do that easily. 

You can use square brackets (`[]`) to specify which elements you would like to select, as can be seen in the example on the right.

Note that you could also type `cost [c(3,4,5)]` and get the same result as `cost[3:5]`. The `:` operator helps you condense the code and get consecutive values. 

*** =instructions
Use the `[]` and `:` operators to access the calories of the first 3 elements in the list of `calories`.

*** =hint
Square brackets and : are the important bits in this.

*** =pre_exercise_code
```{r}
cost <- c(50, 75, 90, 100, 150)
food <- c("pizza", "burgers", "salads", "cheese", "pasta")
names(cost) <- food
```

*** =sample_code
```{r}
# Example: Cost of the last 3 food items
cost[3:5]
cost[c(3,4,5)]

# Defining dessert names and calories (code from previous exercises)
desserts <- c("cheesecake", "chocolate mousse", "brownie", "apple pie", "pudding")
calories <- c(257, 355, 243, 411, 288)
names(calories) <- desserts

# Calories of the first 3 desserts


```

*** =solution
```{r}
# Example: Cost of the last 3 items in our food list
cost[3:5]

# Defining dessert names and calories (code from previous exercises)
desserts <- c("cheesecake", "chocolate mousse", "brownie", "apple pie", "pudding")
calories <- c(257, 355, 243, 411, 288)
names(calories) <- desserts

# Calories of the first 3 desserts
calories[1:3]

```

*** =sct
```{r}
test_error()
test_output_contains("calories[1:3]", incorrect_msg = "The square brackets and colon operators are essential to this command.")
success_msg("Awesome! You`ve learnt how to make your work easier.")
```
----

--- type:NormalExercise lang:r xp:100 skills:1 key:7e98f2ad1b
## 8. Indexing Vector Elements (Part 2) 

In the previous exercise, you used operator `:` to access consective elements in a vector. Now, you will learn to access
any elements in a vector.

You mention the index of the elements you want to display separated by commas. 

`vct_name[c(index1,index2)]` will print the elements of the `vct_name` in `index1` and `index2` locations of the vector. 

Run the sample code to see how this is done.

*** =instructions
Use the `[]` operator to access the calories of the `chocolate mousse`(2nd) and `pudding`(5th).

*** =hint
Use `c()` function to create a numeric vector to index elements of a vector.

*** =pre_exercise_code
```{r}
cost <- c(50, 75, 90, 100, 150)
food <- c("pizza", "burgers", "salads", "cheese", "pasta")
names(cost) <- food
```

*** =sample_code
```{r}
# Access the cost of pizza and pasta from our food list
cost [c(1,5)]

# Defining dessert names and calories (code from previous exercises)
desserts <- c("cheesecake", "chocolate mousse", "brownie", "apple pie", "pudding")
calories <- c(257, 355, 243, 411, 288)
names(calories) <- desserts

# Access the calories for chocolate mousse and brownie


```

*** =solution
```{r}
# Access the cost of pizza and pasta from our food list
cost [c(1,5)]

# Defining dessert names and calories (code from previous exercises)
desserts <- c("cheesecake", "chocolate_mousse", "brownie", "apple_pie", "pudding")
calories <- c(257, 355, 243, 411, 288)
names(calories) <- desserts

# Access the calories for chocolate mousse and brownie
calories[c(2,5)]

```

*** =sct
```{r}
test_error()
test_output_contains("calories[c(2,5)]", incorrect_msg = "You need to use `c` and parenthesis inside the square brackets.")
success_msg("Isn't that awesome! Head to the next exercise!")
```
----



--- type:NormalExercise lang:r xp:100 skills:1 key:02d64318c8
## 9. Sequences

`seq()` is a function in R with which you can easily generate numeric vectors with a certain pattern.

You can create different types of sequences in R. 
For example,to create a vector with the multiples of 7, smaller than 50, the code would be `seq (7, 49, 7)`, where:

- the first argument defines the start,
- the second the end, and
- the third tells how much to jump by (increments)

Run the sample code to see how you can create a sequence of numbers within a certain range with a specified increment. 

*** =instructions
- Create a vector containing all the positive odd numbers smaller than 100

*** =hint
```{r}
If you start at 1 and jump by 2, you`ll get the positive odd numbers.
```
*** =pre_exercise_code
```{r}
# no pec
```

*** =sample_code
```{r}
# Example: Create a vector with all non-negative multiples of 7 smaller than or equal to 50
seq(from = 0, to = 50, by = 7) 

# Example: Or more concisely
seq(0, 50, 7) 

# Create a vector containing all the positive odd numbers smaller than 100.


```
*** =solution
```{r}
# Example: Create a vector with all non-negative multiples of 7 smaller than or equal to 50
seq(from = 0, to = 50, by = 7) 

# Example: Or more concisely
seq(0, 50, 7) 

# Create a vector containing all the positive odd numbers smaller than 100.
seq (1,100,2)
```

*** =sct
```{r}
test_error()
test_output_contains("seq (1,100,2)", incorrect_msg = "Make sure the third argument has the value the sequence needs to jump by.")
success_msg("Awesome! Now, 'jump' to the next exercise.")
```
----


--- type:NormalExercise lang:r xp:100 skills:1 key:373b201f36
## 10. Length of a Vector  

Recall that in the last exercise, you created sequences of numeric values within a certain range with a specified increment. 

Now consider how to find out how many numeric elements are included in such sequences. 

You can do that by using the `length(<vector name>)` function. It prints the length or the number of elements in a given vector.  
You could also create a vector using the `seq()` function within the `length()` function. 
For example, `length(seq(2,100,2))` generates the sequence of even numbers as well as outputs the length of that sequence as `50`.  

Use the sample code as reference.

*** =instructions
- Using one line of code, do the following: 
- Create a vector of numbers that start at 99 and don’t exceed 999, in increments of 9: 99, 108,...999
- Find the length of this vector 

*** =hint
```{r}
Use length and then seq within parenthesis.
```

*** =pre_exercise_code
```{r}
# no pec
```

*** =sample_code
```{r}
# Creating a sequence of numbers `12,13,14...73` and storing it in object `x`
x <- 12:73

# Determining the length of object `x`
length(x)

# Create a sequence of numbers from 9 to 999, in increments of 9 and determine its length


```

*** =solution
```{r}
# Creating a sequence of numbers `12,13,14...73` and storing it in object `x`
x <- 12:73

# Determining the length of object `x`
length(x)

# Create a sequence of numbers from 9 to 999, in increments of 9 and determine its length
length(seq(99,999,9))
```

*** =sct
```{r}
test_error()
test_output_contains("length(seq(99,999,9))", incorrect_msg = "Check the code again.")
success_msg("Great job! Looks like you`re getting good with sequences!")
```
----


--- type:NormalExercise lang:r xp:100 skills:1 key:c056565056
## 11. Class: Integer and Numeric

To force a number to be recognized as an integer, you need to add the letter L. For example, `12L` would be forced to be represented as an integer.  

Run the sample code to learn about how numeric values defined in different ways have different default class in R.

*** =instructions
Confirm that the class of 999L is integer.

*** =hint
```{r}
Just type class and 999L.
```

*** =pre_exercise_code
```{r}
#no pec
```

*** =sample_code
```{r}
# Example: Check several classes. Are they integers or not?
class(a<-1)
class(c(1,3,5))
class(c(1,2.4,3/13))
class(1:5)

# Confirm the class of 999L as an integer

```

*** =solution
```{r}
# Example: Check several classes. Are they integers or not?
class(a<-1)
class(c(1,3,5))
class(c(1,2.4,3/13))
class(1:5)

# Confirm the class of 999L as an integer
class(999L)

```

*** =sct
```{r}
test_error()
test_output_contains("class(999L)", incorrect_msg = "Check the class of `999L` to make sure the L makes it an integer.")
success_msg("Good! move on to one more fun thing in this module.")
```


--- type:NormalExercise lang:r xp:100 skills:1 key:1e7c932a3d
## 12. Coercion

As mentioned before, it is always good practice to keep track of the class of objects in R. When an element in R does not match the expected class, R usually tries to guess what you mean before throwing an error. That might create confusion or result in undetected mistakes. 

Thus, it never hurts to use coercion functions to make sure the objects are of the right class.

The following commands can be used to coerce values into the respective data types:

- `as.integer()`
- `as.numeric()`
- `as.logical()`
- `as.character()`

*** =instructions
Coerce the `desserts` values into numeric values.

*** =hint


*** =pre_exercise_code
```{r}
desserts <- c("cheesecake", "chocolate mousse", "brownie", "apple pie", "pudding")
```

*** =sample_code
```{r}
# Define the `desserts` values
desserts <- c("cheesecake", "chocolate mousse", "brownie", "apple pie", "pudding")

# Coerce it to get a numeric vector for `desserts`


```

*** =solution
```{r}
# Define the `desserts` values
desserts <- c("cheesecake", "chocolate mousse", "brownie", "apple pie", "pudding")

# Coerce it to get a numeric vector for `desserts`
as.numeric(desserts)

```

*** =sct
```{r}
test_error()
test_output_contains("as.numeric(desserts)", incorrect_msg = "Check the code again.")
success_msg("Awesome! Doesn't that feel wonderful? Now, you can try changing it back to characters, using the code `as.character(x)`.")
```
----
