#ggplot2 dplyr tidyr readr most important packages

#pipe a tool for sequence of multiple operations

data("ToothGrowth")
View(ToothGrowth)

filtered.tg <- filter(ToothGrowth, dose==0.5)
View(filtered.tg)

arrange(filtered.tg,len) #len coloumn

arrange(filter(ToothGrowth, dose==0.5), len)

filtered_toothgrowth <- ToothGrowth %>%
  filter(dose==0.5) %>%
  group_by(supp) %>% 
  summarise(mean_len = mean(len, na.rm = T), .group="drop")

