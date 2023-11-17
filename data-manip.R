#DataFrames
#Columns should be named, data can be of different types, each coloumn must have same no. of data items

#Tibbles
#never change datatype, names, row names and making print easier

#Tidy data standards
# -Variables are org into columns
# -Observations are org into rows
# -each value must have its own cell

library(ggplot2)
View(diamonds)
head(diamonds)
str(diamonds)
 
library(tidyverse)
mutate(diamonds, carat_2 = carat*100)

names <- c("Abel", "Gouri", "Abdulla", "Merin")
age <- c(22, 21, 20, 21)
people <- data.frame(names, age)

head(people)
str(people)
glimpse(people)

as_tibble(diamonds)
