install.packages('Tmisc')
library(Tmisc)
data(quartet)
View(quartet)
library(tidyverse)

quartet %>% 
  group_by(set) %>% 
  summarize(mean(x), sd(x), mean(y), sd(y), cor(x,y))

#ggplot(quartet)

install.packages("datasauRus")
library('datasauRus')
ggplot(datasaurus_dozen,aes(x=x,y=y,colour=dataset))+geom_point()+theme_void()+theme(legend.position = "none")+facet_wrap(~dataset,ncol=3)  


install.packages(("SimDesign"))
library(SimDesign)
actual_temp <- c(68.3, 70, 72.4, 71, 67, 70)
predicted_temp <- c(67.9, 69, 71, 70, 67, 71)
bias(actual_temp, predicted_temp)

actual_sales <- c(150, 230, 137, 247, 117, 287)
predicted_sales <- c(200, 250, 150, 250, 150, 350)
bias(actual_sales, predicted_sales)
