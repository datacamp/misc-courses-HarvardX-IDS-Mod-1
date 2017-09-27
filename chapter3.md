---
title       : Vectors
description : The most basic unit to store data in R are vectors. We'll learn about creating and working with them in this chapter. 
--- type:NormalExercise lang:r xp:100 skills:1 key:7ffb66e63a

## 1. Creating a numeric vector
Vectors are one-dimension arrays that can hold numeric data, character data, or logical data. In other words, a vector is a simple tool to store data.
In R, you create a vector with the combine function c(). You place the vector elements separated by a comma between the parentheses. 
For example a numeric vector would look something like this: 
`cost <- c(50, 75, 90, 100, 150)`

*** =instructions
Use the function c to create a numeric vector with the average high temperatures in January for Beijing, Lagos, Paris, Rio de Janeiro, San Juan, and Toronto which are `35, 88, 42, 84, 81, and 30` degrees farenheit. Call the object `temp`.

*** =hint
Make sure your numbers are within parenthesis and have commas separating them. 

*** =pre_exercise_code
```{r}
#no pec
```

*** =sample_code
```{r}
# create a numeric vector to store the cost of different food items and assign it to `cost`
cost <- c(50, 75, 90, 100, 150)

# create a numeric vector to store the temperatures in Jan for 6 countries  and assign it to `temp`
```

*** =solution
```{r}
# create a numeric vector to store the temperatures in Jan for 6 countries and assign it to `temp`
temp <- c(35, 88, 42, 84, 81, 30)
```

*** =sct
```{r}
test_error()
test_object("temp", incorrect_msg = "Check to match the numbers from the question!")
success_msg("Good job! Do you want to now try creating a character vector")
```
----

---type:NormalExercise lang:r xp:100 skills:1 key:d226f2d807

## 2. Character Vectors  

As in the previous question, we are going to create a vector. Only this time, let's learn to create a character vector. The main difference is that these have to be written as strings and so the names are enclosed within double inverted commas. 

A character vector would look something like this:
`food <- c("pizza", "burgers", "salads", "cheese", "pasta")`

*** =instructions
Using the same cities as in the previous question (Beijing, Lagos, Paris, Rio de Janeiro, San Juan, and Toronto), create a vector with the city names and call the object `city`. 

*** =hint
Be sure to place the names within double inverted commas. 

*** =pre_exercise_code
```{r}
#no pec
```

*** =sample_code
```{r}
# create a character vector to store the different types of food items and assign it to `food`
food <- c("pizza", "burgers", "salads", "cheese", "pasta")

# create a character vector to store the names of the 6 cities and assign it to `city`

```

*** =solution
```{r}
# create a character vector to store the names of the 6 cities  and assign it to `city`
city <- c("Beijing", "Lagos", "Paris", "Rio de Janeiro", "San Juan", "Toronto")

```

*** =sct
```{r}

test_error()
test_object("city", incorrect_msg = "Each of the city names need inverted commas.")
success_msg("Awesome! Now you`ve learnt to store both numeric and character vectors!")
```
----

--- type:NormalExercise lang:r xp:100 skills:1 key:b4215811b5
## 3. Connecting Numeric and Character Vectors 

We have successfully assigned the temperatures (numeric values) to `temp` and the city names(character values) to `city`. But can we associate the temperature to it's related city? Yes! We can do so using a code we already know - `names`. We assign names to the numeric values.  

It would look like this:
`cost <- c(50, 75, 90, 100, 150)`
`food <- c("pizza", "burgers", "salads", "cheese", "pasta")`
`names(cost) <- food` 

*** =instructions
Use the names function and the objects defined in the previous exercises to associate the temperature data with its corresponding city.
(You can go back to the previous questions and copy the objects stored.)

*** =hint
Assign names to the numeric values. 

*** =pre_exercise_code
```{r}
#no pec
```

*** =sample_code
```{r}
# Associate the cost values with its corresponding food item
cost <- c(50, 75, 90, 100, 150)
food <- c("pizza", "burgers", "salads", "cheese", "pasta")
names(cost) <- food

# Remember, R just stores the values in the object and doesn't display unless asked. To display, just type the name of the object
cost

# Associate the temperature values with its corresponding city

```

*** =solution
```{r}

# Associate the temperature values with its corresponding city
temp <- c(35, 88, 42, 84, 81, 30)
city <- c("Beijing", "Lagos", "Paris", "Rio de Janeiro", "San Juan", "Toronto")
names(temp) <- city

```

*** =sct
```{r}
test_error()
test_object("temp", incorrect_msg = "Check to match the numbers from the question!")
test_object("city", incorrect_msg = "Each of the city names need inverted commas.")
test_function("names", incorrect_msg = "The numeric vector should be in the parenthesis.") 
success_msg("Great job! We now know the temperatures of the respective cities.")
```

----

--- type:NormalExercise lang:r xp:100 skills:1 key:2d2690ae69
## 4. Using Operators

If we want to display only selected values from the object, R can help us do that easily. 

For example, if we want to see the cost of the last 3 items in our food list, we would type:
`cost[3:5]`

Note here, that we could also type `cost [c(3,4,5)]` and get the same result. The `:` operator helps us condense the code and get consecutive values. 


*** =instructions

Use the [ and : operators to access the temperature of the first three cities in the list:


*** =hint
Square brackets and : are the important bits in this.

*** =pre_exercise_code
```{r}
temp <- c(35, 88, 42, 84, 81, 30) 
city <- c("Beijing", "Lagos", "Paris", "Rio de Janeiro", "San Juan", "Toronto")
names(temp) <- city
```

*** =sample_code
```{r}
# cost of the last 3 items in our food list:
cost[3:5]

# temperatures of the first three cities in the list:

```

*** =solution
```{r}
# temperatures of the first three cities in the list:
temp[1:3]

```

*** =sct
```{r}
test_error()
test_output_contains("temp[1:3]", incorrect_msg = "The square brackets and colon operators are essential to this command.")
success_msg("Awesome! You`ve learnt how to make your work easier.")

```
----


--- type:NormalExercise lang:r xp:100 skills:1 key:2f3c6a9045
## 5. Using Operators continued...

In the previous question, we accessed the temperature for consequtive cities (1st three). But what if we want to access the temperatures for any 2 specific cities. Well, let's see how we can do that in R! 

An example:
To access the cost of `pizza` (1st) and `pasta` (5th food item) in our list, the code would be:
 `cost [c(1,5)]` 


*** =instructions
Use the [ operator to access the temperature of Paris and San Juan.

*** =hint

*** =pre_exercise_code
```{r}
temp <- c(35, 88, 42, 84, 81, 30)
city <- c("Beijing", "Lagos", "Paris", "Rio de Janeiro", "San Juan", "Toronto")
names(temp) <- city
```

*** =sample_code
```{r}
# Access the cost of pizza and pasta from our food list 
cost [c(1,5)]

# Access the temperatures of Paris and San Juan
```

*** =solution
```{r}

# Access the temperatures of Paris and San Juan
temp[c(2,4)]

```

*** =sct
```{r}
test_error()
test_output_contains("temp[c(2,4)]", incorrect_msg = "You need to use `c` and parenthesis inside the square brackets.")
success_msg("Isn`t that awesome! Let`s move to the next exercise!")
```
----

--- type:NormalExercise lang:r xp:100 skills:1 key:a96ba3d1b8
## 6. Sequences 

The `:` operator helps us to create sequences of numbers. 
For example, `32:99` would create a list of numbers from 32 to 99 (32,33,34...99). 

Then, if we want to know the length of this sequence, all we need to do use the `length` command. 

*** =instructions
Use the : operator to create a sequence of numbers `12,13,14....73`. 

*** =hint
Save the sequence in an object. 

*** =pre_exercise_code
```{r}
#no pec
```

*** =sample_code
```{r}
# Creating a sequence of numbers 32,33,34...99 and storing it in object `m`
m <- 32:99

# Determining the length of object `m`
length(m)

# Creating a sequence of numbers `12,13,14...73` and storing it in object `x`


# Determining the length of object `x`

```

*** =solution
```{r}
# Creating a sequence of numbers `12,13,14...73` and storing it in object `x`
x <- 12:73

# Determining the length of object `x`
length(x)

```

*** =sct
```{r}

test_error()
test_object("x", undefined_msg = "Make sure to define `x`!", incorrect_msg = "Have you correctly assigned 12:73 to `x`!")
success_msg("Good job! Let`s move to the next question!")
```
----
--- type:NormalExercise lang:r xp:100 skills:1 key:3e99eae115
## 7. Sequences continued...

We can also create different types of sequences in R. 
For example, in `seq (7, 49, 7)`, the first argument defines the start, and the second the end. 
The default is to go up in increments of 1, but a third argument let's us tell it how much to jump by.

*** =instructions
Create a vector containing all the positive odd numbers smaller than 100.

*** =hint
If you start at 1 and jump by 2, you`ll get the positive odd numbers. 

*** =pre_exercise_code
```{r}
# no pec
```

*** =sample_code
```{r}
# Create a vector with the multiples of 7, smaller than 50. 
seq(7, 49, 7) 

# Create a vector containing all the positive odd numbers smaller than 100.


```

*** =solution
```{r}
# Create a vector containing all the positive odd numbers smaller than 100.
seq(1, 100, 2)
```

*** =sct
```{r}
test_error()
test_output_contains("seq(1,100,2)", incorrect_msg = "Make sure the third argument has the value the sequence needs to jump by.")
success_msg("Awesome! Let`s `jump` to the next exercise.")
```
----
--- type:NormalExercise lang:r xp:100 skills:1 key:431627ebb5
## 8. Sequences and length  

Here, we're just looking to use 2 commands that we've just used in the previous questions. The `seq` command will generate the sequence and the `length` command will tell you how many numbers the list has. 

*** =instructions
Create a vector of numbers that starts at 6, does not cross 55, and adds numbers in increments of 4/7: 6, 6+4/7, 6+8/7, etc... 
How many numbers does the list have? 
Use only one line of code to answer both questions.

*** =hint
Use length and then seq within parenthesis.

*** =pre_exercise_code
```{r}
# no pec 
```

*** =sample_code
```{r}
# Create a sequence of numbers from 6 to 55, with 4/7 increments and determine its length


```

*** =solution
```{r}
# Create a sequence of numbers from 6 to 55, with 4/7 increments and determine its length
length(seq(6, 55, 4/7))

```

*** =sct
```{r}
test_error()
test_output_contains("length(seq(6, 55, 4/7))", incorrect_msg = "Check the code again.")
success_msg("Great job! Looks like you`re getting good with sequences!")

```
----

--- type:NormalExercise lang:r xp:100 skills:1 key:85a3446d33
## 9. Sequences and Class 

We've already learnt how to define the class of an object. Let`s do the same for a sequence we generate. 

*** =instructions
What is the class of the following object `a <- seq(1, 10, 0.5)`?

*** =hint
Create the seq, store it in an object, then check the class.

*** =pre_exercise_code
```{r}
#no pec 
```

*** =sample_code
```{r}
# Store the sequence in the object `a`


# Define the class of `a`


```

*** =solution
```{r}
# Store the sequence in the object `a`
a <- seq(1, 10, 0.5)

# Define the class of `a`
class(a)

```

*** =sct
```{r}
test_error()
test_object("a", undefined_msg = "Make sure you store the sequence in object `a`.", incorrect_msg = "There's something wrong with the sequence.")
test_function("class")
success_msg("Good job! Let`s move on to the next exercise!")
```
----

--- type:NormalExercise lang:r xp:100 skills:1 key:dc9eba1213
## 10. Sequences and Class continued...

In this question, focus on the values that we are using in the sequence. They are integers. 
R assumes that seq is producing indexes and therefor uses the integer class when possible. An advantage of integers over numerics is that they take up less space to store. Other than that there are few practical differences.

*** =instructions
What is the class of the following object `a <- seq(1, 10)`?

*** =hint
Note that there are only integer values within the seq parenthesis. 

*** =pre_exercise_code
```{r}
# no pec 
```

*** =sample_code
```{r}
# Store the sequence in the object `a`


# Define the class of `a`


```

*** =solution
```{r}
# Store the sequence in the object `a`
a <- seq(1, 10)

# Define the class of `a`
class(a)

```

*** =sct
```{r}
test_error()
test_object("a", undefined_msg = "Make sure you store the sequence in object `a`.", incorrect_msg = "There's something wrong with the sequence.")
test_function("class")
success_msg("Good job! Let`s move on to the next exercise!")
```
----

--- type:NormalExercise lang:r xp:100 skills:1 key:0f90522662
## 11. Class, Integers and Numerics

Note that if you run the class of `class(a<-1)` it shows up as numeric and not integer. 
R defaults to numeric and to force a number to be recognized as an integer, you need to add the letter L.

*** =instructions
Confirm that the class of 1L is integer.

*** =hint
Just type class and 1L. 

*** =pre_exercise_code
```{r}
class(a <-1)
```

*** =sample_code
```{r}
# Check the class of `1`, assigned to the object `a`
class(a<-1)

# Confirm the class of 1L as an integer


```

*** =solution
```{r}
# Confirm the class of 1L as an integer
class(1L)

```

*** =sct
```{r}
test_error()
test_output_contains("class(1L)", incorrect_msg = "Check the class of `1L` to make sure the L makes it an integer.")
success_msg("Great, now that you know how to force a number to become an integer, let's move on to one more fun thing in this module.")
```
----
--- type:NormalExercise lang:r xp:100 skills:1 key:264e14dc1d
## 12. Coercion 

The concept of coercion is a very important one. Watching the video, we learnt that when an entry does not match the expected, R tries to guess what we meant before throwing an errors. That might get confusing at times. 

As we've discussed in earlier questions, there are numbers and character vectors. The character vectors are placed within inverted commas, and the numeric aren't. 

We can coerce R into changing characters to integers and vice-versa. The code, `as.integer(x)` helps us do this. 
Let's practice doing it!

*** =instructions
Define the following vector:

`x <- c("1", "3", "5")`
And coerce it to get integers using code `as.integer(x)`. 

*** =hint
Make sure you put the numbers within "". 

*** =pre_exercise_code
```{r}

```

*** =sample_code
```{r}
# Define the vector `x`


# Coerce it to get an integer 

```

*** =solution
```{r}
# Define the vector `x`
x <- c("1", "3", "5")

# Coerce it to get an integer 
as.integer(x)

```

*** =sct
```{r}
test_error()
test_object("x", undefined_msg = "Make sure to define x first.", incorrect_msg = "Check the values stored in `x`.")
test_output_contains("as.integer(x)", incorrect_msg = "Check the code again.")
success_msg("Awesome!Doesn`t that feel wonderful. Now, you can try changing it back to character, using the code `as.character(x)`.")
```
-------
type:MultipleChoiceExercise lang:r xp:0 skills:1 key:011b43bb92
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

