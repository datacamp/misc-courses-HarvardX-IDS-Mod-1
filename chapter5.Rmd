---
title       : Vector Arithmetics
description : We will learn about the more powerful vector arithmetic functions in R, that help us solve higher-level problems. 
---
## Vectorized operations

```yaml
type: NormalExercise
key: 496010199b
lang: r
xp: 100
skills: 1
```
Previously we created this data frame:

```{r}
temp <- c(35, 88, 42, 84, 81, 30)
city <- c("Beijing", "Lagos", "Paris", "Rio de Janeiro", "San Juan", "Toronto")
city_temps <- data.frame(name = city, temperature = temp)
```

`@instructions`
- Remake the data frame using the code above but add a line that converts the temperature from farenheit to celsius. 

`@hint`
The conversion rate is: `degree Farenheit* 9/5 + 32 = degree celsius` 

`@pre_exercise_code`
```{r}
# no pec
```

`@sample_code`
```{r}
# Store temperature values in `temp`
temp <- c(35, 88, 42, 84, 81, 30)

# Convert temperature into celsius and restore in `temp`


# Assign city names to `city` 


# Create data frame `city_temps` 

```

`@solution`
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

`@sct`
```{r}
test_object("temp", undefined_msg = "Define temp first.", incorrect_msg = "Store values of temperature!")
test_object("temp", incorrect_msg = "Change from Farenheit to Celsius using `temp <- (temp - 32)*5/9`.")
test_object("city", incorrect_msg = "Store names of cities.")
test_object("city_temps", incorrect_msg = "Create a dataframe following the same example.")
test_error()
success_msg("Great job!")
```
