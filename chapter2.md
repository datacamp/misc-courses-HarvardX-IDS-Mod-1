---
title       : Data Types
description : We're going to get an overview, of the different types of variables that there are in R, and how to work with them. 
--- type:MultipleChoiceExercise lang:r xp:50 skills:1 key:8a1f23741a

## Data Types: 1. Structure 

We're going to be using the following dataset for this module. 
Run this code in the console. 

`library(dslabs)`

`data("murders")`

Use the function `str` to examine the structure of the murders object. 
We can see that this object is a data frame with 51 rows and five columns. 

Which of the following best describes the variables represented in this data frame:

*** =instructions
- The 51 states 
- The murder rates for all 50 states and DC 
- The state name, the abbreviation of the state name, the state's region, and the state's population and the total number of murders for 2010.
- str shows no relevant information

*** =hint
Check the output that you see with the `str` function.


*** =pre_exercise_code
```{r}

load(url("http://s3.amazonaws.com/assets.datacamp.com/production/course_3073/datasets/murders.rda"))
str(murders) 
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
--- type:NormalExercise lang:r xp:100 skills:1 key:a481e086d1
## 2. Variable Names

In the previous question, we saw the different variables that are a part of this dataset. 
Let's find out if we can get the names of the different columns in this dataset. 
To find out the names of the variables, there is a very simple command, called `names()`, which we will use now. 

*** =instructions
What are the column names used by the data.frame for these five variables?
Find out, using the code: `names(murders)` 

*** =hint
Make sure you put the name of the dataset - `murders` - in parenthesis after names. 

*** =pre_exercise_code
```{r}
load(url("http://s3.amazonaws.com/assets.datacamp.com/production/course_3073/datasets/murders.rda"))

```

*** =sample_code
```{r}
# Checking the column names 

```

*** =solution
```{r}
# Checking the column names 
names(murders)
```

*** =sct
```{r}
test_error()
test_function("names", incorrect_msg = "Make sure you've put in the name of the dataset.") 
success_msg("Good job!")
```
----

--- type:NormalExercise lang:r xp:100 skills:1 key:e22e8e58ef
## 3. Accessor $ and Class

As we`ve learnt in this module, every variable has a class. It could be a character, numeric or logical. 
R let`s us know the class of our variable very easily. All we need to do is ask it nicely! 

Since we can open more than one dataset in R, we need to specify where it can find a certain variable. To do this, we use something called an accessor, denoted by the `$` sign. 

If you look to the right, the R-script shows you an example for this. Let`s try it out for ourselves. 

*** =instructions
Use the accessor $ to extract the state abbreviations and assign them to the object a. 
What is the class of this object?

*** =hint
Remeber to assign the state abbreviations to the object `a`. 

*** =pre_exercise_code
```{r}
load(url("http://s3.amazonaws.com/assets.datacamp.com/production/course_3073/datasets/murders.rda"))
 
```

*** =sample_code
```{r}
# Using the accessor to extract a variable (population) from dataset (murders), and assigning it to object `m`
m <- murders$population 

# Determine the class of object `m`
class(m)

# Use the accessor to extract `state abbreviations` from `murders`, and assign it to `a`

# Determine the class of `a`


```

*** =solution
```{r}
# Use the accessor to extract `state abbreviations` from `murders`, and assign it to `a`
a <- murders$abb 

# Determine the class of `a`
class(a)  

```

*** =sct
```{r}
test_error()
test_object ("a", undefined_msg = "You need to define the object `a`.", incorrect_msg = "Make sure to save the variable `abb` in the object `a`.")
test_function("class")
success_msg("That's great! Now, you know what the class of `abb` is. Play around to check the class of the other variables in the dataset!")
```
----


--- type:NormalExercise lang:r xp:100 skills:1 key:f9207929f3
## 4. Accessors again! This time with comparisons. 

There are multiple ways to do things in R. For example, we can write c(1,2,3,4,5) as c(1:5) and get the same result. 
Another way to access the variables in your dataset is to use square brackets. 
Look at the top-right screen for an example and then practice the code for yourself! 

When you've done that, you'll notice there's another part to this question, and that is to find out whether the two symbols `$` and `[]` actually serve the same purpose! Don't believe something until you try it out for yourself! 

*** =instructions
Use the square brackets [] to extract the state abbreviations and assign them to the object b. 
Use the identical function to determine if a and b are the same.

*** =hint
You need to use 2 sets of square brackets. 

*** =pre_exercise_code
```{r}
load(url("http://s3.amazonaws.com/assets.datacamp.com/production/course_3073/datasets/murders.rda"))
a <- murders$abb 
```

*** =sample_code
```{r}
# Using square brackets to extract variable (population) from dataset (murders) and assign it to object `n`
n <- murders[["population"]] 

# Check whether `m` from the previous question and `n` from this one are the same
identical(m,n)

# Use square brackets to extract `abb` from `murders` and assign to `b`

# Check if `a` and `b` are identical 

```

*** =solution
```{r}
# Use square brackets to extract `abb` from `murders` and assign to `b`
b <- murders[["abb"]]

# Check if `a` and `b` are identical 
identical(a,b)
```

*** =sct
```{r}
test_error()
test_object ("b", undefined_msg = "You need to define the object `b`.", incorrect_msg = "Make sure to save the variable `abb` in the object `b`.")
test_function("identical")
success_msg("You've now learnt different ways of doing the same thing in R! You're making great progress! Let's move on!")
```
----


--- type:NormalExercise lang:r xp:100 skills:1 key:e3211138bb
## 5. Class and factors

With the `str` command, we saw that the regions column stores a factor. You can corroborate this by using the `class` command for region. 
R helps us get a quick look at the variable. If we want to know the number of regions in this dataset, we need to use the `levels` and `length` commands. (add an explanation about these commands.)


*** =instructions

With one line of code, use the function `levels` and `length` to determine the number of regions defined by this dataset. Use the code `length(levels(murders$region))`

*** =hint
Make sure you're using both commands - `length` and `levels`, to get the number of regions.  

*** =pre_exercise_code
```{r}
load(url("http://s3.amazonaws.com/assets.datacamp.com/production/course_3073/datasets/murders.rda"))
class(murders$region)

```

*** =sample_code
```{r}
# Determine the number of regions defined by this dataset 

```

*** =solution
```{r}

# Determine the number of regions defined by this dataset 
length(levels(murders$region))

```

*** =sct
```{r}
test_error()
test_output_contains("length(levels(murders$region))", incorrect_msg = "Run the code mentioned in the instructions exactly as is!")
success_msg("Good job!")

```
----

--- type:NormalExercise lang:r xp:100 skills:1 key:c79e23df50
## 6. Tables and vectors 

The function table takes a vector and returns the frequency of each element. You can quickly see how many states are in each region by applying the `table` function. 

*** =instructions

Use this function in one line of code to create a table of states per region.

*** =hint
Extract the variable region from the murders dataset and then create the table. 

*** =pre_exercise_code
```{r}
load(url("http://s3.amazonaws.com/assets.datacamp.com/production/course_3073/datasets/murders.rda"))
```

*** =sample_code
```{r}
# Creating a table of states according to the variable 'population'. Note that this will not give us very meaningful information, as the frequency of each population datapoint will be 1. It is just used as an example to illustrate the solution. 
# Also note how we use the accessor to extract our variable again! 
table(murders$population)

# Create a table of states per region

```

*** =solution
```{r}
# Create a table of states per region
table(murders$region)

```

*** =sct
```{r}
test_error()
test_function("table", incorrect_msg = "Make sure you extract the variable region from the dataset.")
success_msg("You got this! Now you're a pro at making tables in R!")

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

