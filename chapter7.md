---
title       : Basic Data Manipulation 
description : Just as the name suggests, we're going to practice the basics of data manipulation here.
---
## dplyr

```yaml
type: NormalExercise
key: 766d9c4eab
lang: r
xp: 100
skills: 1
```
Load the `dplyr` package and the murders dataset.

```{r}
library(dplyr)
library(dslabs)
data(murders)
```

`@instructions`
Use the function `mutate` to add a murders rate column with the per 100,000 murder rate.

`@hint`
Use code `murders <- mutate(murders, rate =  total / population * 100000)`.  

`@pre_exercise_code`
```{r}
library(dplyr)
library(dslabs)
data(murders)
```

`@sample_code`
```{r}
# Loading the libraries
library(dplyr)
data(murders)

# Use mutate to add a column named rate and store in murders

```

`@solution`
```{r}
# Loading the libraries
library(dplyr)
data(murders)

# Use mutate to add a rate column and store in `murders`
murders <- mutate(murders, rate =  total / population * 100000)
```

`@sct`
```{r}
test_object("murders", undefined_msg = "Define murder first.", incorrect_msg = "Check the code again.")
test_error()
success_msg("Awesome! Let's learn another command with mutate.")
```
