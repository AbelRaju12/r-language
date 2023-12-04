#ggplot2
#aesthetic -> visual property of an object in your plot
#geom -> geometric object to ref to data
#facets -> lets u display subsets of data
#labels and annotations -> customize your plot

library("ggplot2")
library("palmerpenguins")

ggplot(data=penguins)+geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g))

ggplot(data=penguins)
#combinations of info using '+', aes -> aesthetic

ggplot(data=penguins)+geom_point(mapping=aes(x=bill_length_mm,y=bill_depth_mm))
?geom_point
