library(ggplot2)
library(palmerpenguins)

ggplot(data = penguins) + geom_point(aes(x = flipper_length_mm, y = body_mass_g, color = species)) #shape = species

ggplot(data = penguins) + geom_point(aes(x = flipper_length_mm, y = body_mass_g, shape = species, color = species, size = species))

ggplot(data = penguins) + geom_point(aes(x = flipper_length_mm, y = body_mass_g, shape = species, color = species, size = species, alpha = species))

ggplot(data = penguins) + geom_point(aes(x = flipper_length_mm, y = body_mass_g, shape = species, alpha = species), color = "purple")


ggplot(data = penguins) + geom_smooth(aes(x = flipper_length_mm, y = body_mass_g)) 

ggplot(data = penguins) + geom_smooth(aes(x = flipper_length_mm, y = body_mass_g, linetype = species)) 

ggplot(data = penguins) + geom_smooth(aes(x = flipper_length_mm, y = body_mass_g, linetype = species)) 

ggplot(data = penguins) +
  geom_smooth(aes(x = flipper_length_mm, y = body_mass_g)) +
  geom_jitter(aes(x = flipper_length_mm, y = body_mass_g))
   

ggplot(data = diamonds) +
  geom_bar(mapping = aes(x = cut, fill = clarity))
