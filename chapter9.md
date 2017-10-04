---
title       : Programming Basics
description : Programming Basics
---
## Conditionals

```yaml
type: MultipleChoiceExercise
key: 77691772c6
lang: r
xp: 100
skills: 1
```
What will this conditional expression return?
Run it from the console. 


```{r}
x <- c(1,2,-3,4)
if(all(x>0)){
    print("All Postives")
  } else{
     print("Not All Positives")
  }
```

`@instructions`
- All Positives
- Not All Positives
- N/A
- None of the above 

`@hint`
Are the numbers stored in x positive or not?

`@pre_exercise_code`
```{r}
# no pec
```

`@sct`
```{r}
msg1 = "Look at the values again."
msg2 = "Awesome! That is correct."
msg3 = "Check the question again."
msg4 = "Check the values in x once more."
test_mc(correct = 2, feedback_msgs = c(msg1,msg2,msg3,msg4))
```