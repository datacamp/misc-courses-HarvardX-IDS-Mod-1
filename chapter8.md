---
title       : Basic Plots
description : We engage in the basics of plot-making in R, with scatterplots, histograms and box plots.
--- type:NormalExercise lang:r xp:100 skills:1 key:54f4b68ff9
## 1. Scatterplot 

We made a plot of total murders versus population and noted a strong relationship: not surprisingly states with larger populations had more murders. (Run the code in the console to get plot.)

`library(dslabs)`
`data(murders)`
`population_in_millions <- murders$population/10^6`
`total_gun_murders <- murders$total`
`plot(population_in_millions, total_gun_murders)`

Note that many states have populations below 5 million and are bunched up. We may gain further insights from making this plot in the log scale. 
*** =instructions
Transform the variables using the log10 transformation and then plot the total murders versus population.


*** =hint

*** =pre_exercise_code
```{r}
load(url("http://s3.amazonaws.com/assets.datacamp.com/production/course_3073/datasets/murders.rda"))
```

*** =sample_code
```{r}
# Load the datasets
library(dslabs)
data(murders)
population_in_millions <- murders$population/10^6
total_gun_murders <- murders$total
plot(population_in_millions, total_gun_murders)

# Transform population using `log10` transformation

# Transform total gun murders using `log10` transformation

# Create a scatterplot with population and murders 

```

*** =solution
```{r}

# Transform population using `log10` transformation
log10_population<- log10(murders$population)

# Transform total gun murders using `log10` transformation
log10_total_gun_murders <- log10(murders$total)

# Create a scatterplot with population and murders 
plot(log10_population, log10_total_gun_murders)
```

*** =sct
```{r}
test_error()
test_object("log10_population", undefined_msg = "Define log10_population first.", incorrect_msg = "Transform variable using log10.")
test_object("log10_total_gun_murders", undefined_msg = "Define log10_total_gun_murders first.", incorrect_msg = "Transform variable using log10.")
test_function("plot", incorrect_msg = "Scatter population on murders.")
success_msg("Doesn't that plot look neat!")
```
----

--- type:NormalExercise lang:r xp:100 skills:1 key:08c2ba4a0f
## 2. Histogram 


*** =instructions
Create a histogram of the state populations.

*** =hint

*** =pre_exercise_code
```{r}
load(url("http://s3.amazonaws.com/assets.datacamp.com/production/course_3073/datasets/murders.rda"))
```

*** =sample_code
```{r}
# Store the population in millions (same as previous question)


# Create a histogram of the population 
```

*** =solution
```{r}
# Store the population in millions (same as previous question)
population_in_millions <- murders$population/10^6

# Create a histogram of the population 
hist(population_in_millions)
```

*** =sct
```{r}
test_error()
test_object("population_in_millions", undefined_msg = "Define the population first.", incorrect_msg = "Check code!")
test_function("hist", incorrect_msg = "Check code again.")
success_msg("We got a histogram! Awesome!")
```
----

--- type:NormalExercise lang:r xp:100 skills:1 key:e81739b658
## 3. Boxplot 


*** =instructions
Generate boxplots of the state populations by region (`population~region`), using one line of code.  

*** =hint
Make sure you specify the dataset.

*** =pre_exercise_code
```{r}
load(url("http://s3.amazonaws.com/assets.datacamp.com/production/course_3073/datasets/murders.rda"))
```

*** =sample_code
```{r}
# Create a boxplot of state populations by region and specify dataset 

```

*** =solution
```{r}
# Create a boxplot of state populations by region and specify dataset 
boxplot(population~region, data = murders)

```

*** =sct
```{r}
test_error()
test_function("boxplot", incorrect_msg = "Check code. use ~ sign and include dataset.")
success_msg("Great job! Now you've learnt all three basic types of plots in R!")
```
----
