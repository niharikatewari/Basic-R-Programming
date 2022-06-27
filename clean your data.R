#1. each variable as correct variable
#2. select and filter out the rows
#3. Find and deal with missing data
#4. find and deal with duplicate
#5. Recode the values

#tidyverse - additional vocabulary
#install.packages("tidyverse")
library(tidyverse)
data()
View(starwars)

#variable types

glimpse(starwars)
class(starwars$gender)   # what class is it
unique(starwars$gender)   # what can be found

starwars$gender  <- as.factor(starwars$gender)  # changing the gender variable to factor variable
class(starwars$gender)

levels(starwars$gender)
#change the levels - "c" for concatenation
starwars$gender  <- factor((starwars$gender), levels = c("masculine",
                                                         "feminine"))

levels(starwars$gender)

#select variables
names(starwars)

starwars %>% select(name, height, end_with("color")) %>%
  names()

unique(starwars$hair_color)

starwars %>% 
  select(name, height, ends_with("color")) %>%
  filter(hair_color %in% c("blond","brown") &
         height < 180) 

#missing data

mean(starwars$height)  #na.rm = TRUE

starwars %>%
  select(name, gender, hair_color, height)

starwars %>%
  select(name, gender, hair_color, height) %>%
na.omit()

#which variables been removed? - not recommended unless your know the data

starwars  %>%
  select(name, gender, hair_color, height) %>%
  filter(complete.cases(.))   #!complete.cases(.) - missing values

starwars  %>%
  select(name, gender, hair_color, height) %>%
  #filter(!complete.cases(.)) %>%
  drop_na(height)%>%
View()

starwars  %>%
  select(name, gender, hair_color, height) %>%
  filter(!complete.cases(.)) %>%
  mutate(hair_color = replace_na(hair_color, "none"))  #mutate - create new varibale or chnage or write over existing variable


#Mutate function (Additional)

starwars  %>%
  select(name, gender, hair_color, height) %>%
  filter(!complete.cases(.)) %>%
  mutate(hair_color2 = replace_na(hair_color, "none"))

#DUPLICATES

Names <- c("Peter","John", "Andrew","Peter")
Age <- c(22,33,44,22)

friends <- data.frame(Names,Age)
duplicated(friends)

friends[!duplicated(friends), ]  #duplicate(friends)

#tidyverse version 
friends %>% 
  distinct()            #%>% View()


#RECODING VARIABLES
starwars %>% select(name,gender)

starwars %>% 
  select(name, gender) %>%
  mutate(gender = recode(gender,
                         "masculine" = 1,
                         "feminine" = 2))


starwars %>% 
  select(name, gender) %>%
  mutate(gender = recode(gender,
                         "masculine" = 1,
                         "feminine" = 2)) %>%
  View()

