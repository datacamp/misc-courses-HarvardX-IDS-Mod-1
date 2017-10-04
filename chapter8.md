---
title       : Basic Plots
description : We engage in the basics of plot-making in R, with scatterplots, histograms and box plots.
---
## Scatterplots

```yaml
type: NormalExercise
key: 8c7e07ec27
lang: r
xp: 100
skills: 1
```
We made a plot of total murders versus population and noted a strong relationship: not surprisingly states with larger populations had more murders. (Run the code in the console to get plot.)

```{r}
library(dslabs)
data(murders)
population_in_millions <- murders$population/10^6
total_gun_murders <- murders$total
plot(population_in_millions, total_gun_murders)
```

Note that many states have populations below 5 million and are bunched up. We may gain further insights from making this plot in the log scale. 

`@instructions`
Transform the variables using the log10 transformation and then plot the total murders versus population.

`@hint`


`@pre_exercise_code`
```{r}
library(dslabs)
data(murders)
```

`@sample_code`
```{r}
# Load the datasets and define some variables
library(dslabs)
data(murders)
population_in_millions <- murders$population/10^6
total_gun_murders <- murders$total
plot(population_in_millions, total_gun_murders)

# Transform population using `log10` transformation

# Transform total gun murders using `log10` transformation

# Create a scatterplot with population and murders 

```

`@solution`
```{r}
# Transform population using `log10` transformation
log10_population<- log10(murders$population)

# Transform total gun murders using `log10` transformation
log10_total_gun_murders <- log10(murders$total)

# Create a scatterplot with population and murders 
plot(log10_population, log10_total_gun_murders)
```

`@sct`
```{r}
test_object("log10_population", undefined_msg = "Define log10_population first.", incorrect_msg = "Transform variable using log10.")
test_object("log10_total_gun_murders", undefined_msg = "Define log10_total_gun_murders first.", incorrect_msg = "Transform variable using log10.")
test_function("plot", incorrect_msg = "Scatter population on murders.")
test_error()
success_msg("Doesn't that plot look neat!")
```
