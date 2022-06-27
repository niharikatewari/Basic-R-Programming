# titanic dataset
getwd()
setwd()
#install.packages(ggplot2)
library(ggplot2)

train <- read.csv("C:/Users/Lab Pc/Desktop/Datasets/MSc files of R/train.csv", stringsAsFactors = FALSE)
View(train)

train$Pclass <- as.factor(train$Pclass)
train$Survived <- as.factor(train$Survived)
train$Sex <- as.factor(train$Sex)
train$Ticket <- as.factor(train$Ticket)


#plot no of survived 
ggplot(train, aes(x = Survived)) +
  geom_bar()

#percentages
prop.table(table(train$Survived))




# adding customization
ggplot(train, aes(x = Survived)) +
  theme_bw()+
  geom_bar()+
  labs(y = "Passenger count",
       title = "Titanic survival rates")


# survival rate by gender - looking at two aspects
ggplot(train, aes(x = Sex, fill = Survived)) +
  theme_bw()+
  geom_bar()+
  labs(y = "Passenger count",
       title = "Titanic survival rates by sex")




# survival rate by tickets - looking at two aspects
ggplot(train, aes(x = Pclass, fill = Survived)) +
  theme_bw()+
  geom_bar()+
  labs(y = "Passenger count",
       title = "Titanic survival rates by Pclass")



# survival rate by tickets and gender 
ggplot(train, aes(x = Sex, fill = Survived)) +
  theme_bw()+
  facet_wrap(~ Pclass)+
  geom_bar()+
  labs( x = "Gender",
       y = "Passenger count",
       title = "Titanic survival rates According to Passenger class and Gender")

prop.table(table(train$Survived, train$Pclass))
prop.table(table(train$Survived, train$Pclass, train$Sex))



# distribution of passenger ages - histogram
ggplot(train, aes(x = Age)) +
  theme_bw()+
  geom_histogram(binwidth = 5)+
  labs(y = "Passenger count",
       x = "Age",
       title = "Titanic Age distribution")



ggplot(train, aes(x = Age, fill = Survived)) +
  theme_bw()+
  geom_histogram(binwidth = 5)+
  labs(y = "Passenger count",
       x = "Age of passengers",
       title = "Titanic survival rates according to age of passengers")



# box and whisker plot
ggplot(train, aes(x = Survived, y = Age)) +
  theme_bw()+
  geom_boxplot()+
  labs(y = "Age",
       x = "Survived",
       title = "Titanic survival rates by age")



# survival rates by age when segmented by gender and class ticket
# visualization - density plot
ggplot(train, aes(x = Age, fill = Survived)) +
  theme_bw()+
  facet_wrap(Sex ~ Pclass)+
  geom_density(alpha = 0.5)+
  labs(y = "Age",
       x = "Survived",
       title = "Titanic survival rates by Age, Passenger class and Gender")

# visualization - histogram
ggplot(train, aes(x = Age, fill = Survived)) +
  theme_bw()+
  facet_wrap(Sex ~ Pclass)+
  geom_histogram()+
  labs(y = "Age",
       x = "Survived",
       title = "Titanic survival rates by Age, Passenger class and Gender")

