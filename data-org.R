library(palmerpenguins)
library(tidyverse)

penguins %>% 
  arrange(bill_length_mm)
 #arrange(-bill_length_mm)

penguins2 <- penguins %>% arrange(bill_length_mm) 
view(penguins2)

penguins %>% group_by(island) %>% drop_na() %>% summarize(mean_bill_length_mm = mean(bill_length_mm))

penguins %>% group_by(island) %>% drop_na() %>%summarize(max_bill_length_mm = max(bill_length_mm))

penguins %>% group_by(species, island) %>% drop_na() %>%summarize(max_bill_length_mm = max(bill_length_mm), mean_bill_length_mm = mean(bill_length_mm))

penguins %>% filter(species == "Adelie") #%>% drop_na()

ggplot(data = penguins) +
  geom_bar(mapping = aes(x = bill_length_mm)) +
  facet_wrap(~species) +
  labs(title="Comparison of market segments by hotel type for hotel bookings")


ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = market_segment)) +
  facet_wrap(~hotel) +
  labs(title="Comparison of market segments by hotel type for hotel bookings",
       caption=paste0("Data from: ", mindate, " to ", maxdate),
       x="Market Segment",
       y="Number of Bookings")