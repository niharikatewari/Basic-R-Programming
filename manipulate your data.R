# Explore
# Clean
# Manipulate
# Describe and summarise
# Visualize
# Analyse


########################################
##### Manipulate your data#############
#######################################
# Rename a variable
# Reorder variables
# Change a variable type
#Select variables to work with
# filter and arrange data
# Recode data
# Change data (mutate)
# Conditions change
#Reshape dataframe 
         # wide to long
         # long to wide

#load packages
library(tidyverse)

#view data
?msleep
glimpse(msleep)
View(msleep)

#Rename a variable
msleep

msleep %>%
  rename("conserv" = "conservation")    #"conserv" new name 

# Reorder variables

msleep %>%
  select(vore, name, everything())

#Chnaging variable type
class(msleep$vore)
glimpse(msleep$vore)

msleep$vore <- as.factor(msleep$vore)
glimpse(msleep)

msleep %>% 
  mutate(vore = as.character(vore))%>%
  glimpse()

# select variable to work with
names(msleep)

msleep %>%
  select(2:4,
         awake,
         starts_with("sleep"),
         contains("wt")) %>%
names()

# filter and arrange data
unique(msleep$order)

msleep %>%
  filter((order == "Carnivora" |         #| => OR
            order =="Primates") &
           sleep_total > 8) %>%
  select(name,order,sleep_total) %>%
  arrange(-sleep_total) %>%
  View()

# Another way
msleep %>%
  filter(order %in% c("Carnivora","Primates") &
           sleep_total > 8) %>%
  select(name,order,sleep_total) %>%
  arrange(order) %>%
  View

# change observations (mutate)
msleep %>%
  mutate(brainwt = brainwt * 1000) %>%
  View()

msleep %>%
  mutate(brainwt_in_grams = brainwt * 1000) %>%
  View()

# Conditional change - (if-else)
# logical vector based on conditions

msleep$brainwt
msleep$brainwt > 0.01

size_of_brain <- msleep %>%
       select(name, brainwt) %>%
  drop_na(brainwt) %>%
  mutate(brain_size = if_else(brainwt > 0.01,
                              "large",
                              "small"))
size_of_brain

#Recode data and rename a variable
## chnage obs of "Large and small"

size_of_brain %>%
  mutate(brain_size = recode(brain_size,
                             "large" = 1,
                             "small" = 2))
# Very useful
# reshape the data from wide to long or long to wide

library(gapminder)
View(gapminder)

data <- select(gapminder, country, year, lifeExp)
View(data)

wide_data <-data %>%
  pivot_wider(names_from = year, values_from = lifeExp)
View(wide_data)

# back to long data
long_data <- wide_data %>%
  pivot_longer(2:13,
               names_to = "year",
               values_to = "lifeExp")
View(long_data)
