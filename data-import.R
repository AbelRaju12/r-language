library(tidyverse)

library(readr)
hotel_bookings_df <- read_csv("hotel-bookings.csv")
View(hotel_bookings_df)

head(hotel_bookings_df)

colnames(hotel_bookings_df)

library("here")
library("skimr")
library("dplyr")
library("palmerpenguins")

skim_without_charts("palmerpenguins")
glimpse(penguins)
head(penguins)

penguins %>% 
  select(-species)
  #select(species)

head(penguins)
penguins %>% 
  rename(island_new = island)

rename_with(penguins, toupper)
rename_with(penguins, tolower)

penguins %>% 
  clean_names()

