install.packages("tidyverse")
data("starwars")

head(starwars)
View(starwars)
library(ggplot2)
library(tidyverse)

 starwars$sex <- as.factor(starwars$sex)
 starwars$species <- as.factor(starwars$species)
 starwars$eye_color <- as.factor(starwars$eye_color)
 
 
 ggplot(starwars, aes(x = sex, fill = species)) +
   theme_bw()+
   geom_bar()+
   labs( x=" Gender of the starwars characters",
         title = "Gender filled with Species")


 prop.table(table(starwars$species))



ggplot(starwars, aes(x = height, y = mass))+
geom_point(color='red')+
labs(
        x = "height of the starwars character",
        y = "mass of starwars character",
        title = "Starwars"
       )


ggplot(starwars, aes(x = height)) +
  theme_bw()+
geom_histogram( binwidth = 5)


ggplot(starwars, aes(x = height)) +
  theme_bw()+
  geom_density()

 star <- starwars %>% subset(species == "Human" | species == "Droid" | species == "Gungan")

 ggplot(star, aes(species, mass))+
geom_boxplot()
  
 
 a <- ggplot(starwars, aes(mass))
 a <- a + geom_density(binwidth = 10)
 a
    
 a <- a + geom_vline(xintercept = mean_mass, lty = 2, colour = "blue")
 a
 
 
 
 a <- a + theme_light()
 a <- a + theme(axis.title = element_text(size = 13, face = "bold"),
                axis.text = element_text(size = 11))
 a
 
 ggplot(starwars, aes(x = mass)) +
   theme_bw()+
   geom_histogram( binwidth = 10)
 
 ggplot(starwars, aes(x = mass)) +
   theme_bw()+
   geom_density()