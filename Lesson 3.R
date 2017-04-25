## Chapter 3 - Data Visualization

install.packages("tidyverse") 
## installs ggplot2, tibble, tidyr, readr, purrr, dplyr

library(tidyverse)

mpg ## displ : engize size / hwy : car's fuel efficiency

##ploting displ x hwy

ggplot(data =mpg) +
  geom_point(mapping = aes(x=displ, y=hwy))

ggplot(mpg) +
  geom_point(aes(x=displ, y=hwy))

 dev.off()
 
#Exercise
 ##1
p<-ggplot(mpg)

##2
nrow(mtcars) ## 32
ncol(mtcars) ## 11

#3
?mpg
factor(mpg$drv) #f= front wheel drive, r= rear wheel drive, 4=4wd

##4
p +
  geom_point(aes(x=hwy, y=cyl))

##5
p +
  geom_point(aes(x=class, y=drv))
## non-parametric data, no relationship, unorded data


##----

#Exercise
## 1
p +
  geom_point(aes(x=displ,y=hwy, colour= "blue"))

###Asnwer: No Idea

##2

?mpg
###Answer: Categorical: Model, trans, drv, fl, class / Continuous: year, dipl, cty, hwy

##3 Map a continuous variable to color, size, and shape. How do these aesthetics behave differently for categorical vs. continuous variables?


p +
  geom_point(aes(x=displ, y=hwy, size = hwy))


##Answer:  Color: Show Gradient, Size: Show Gradient, i.e. don't show all values. Shape: Continuous variable can not be mapped to shape.

##4 What happens if you map the same variable to multiple aesthetics?

p +
  geom_point(aes(x=displ, y=hwy, size = cty, color = cty))

##Anwser: Both aes are placed independetly