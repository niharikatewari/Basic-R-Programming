library(dplyr)
#############################
### Describe and summarise###
#############################

# Range / spread
# Centrality
# Variance
# Summarize your data
# Create tables

library(tidyverse)
data()

view(msleep)

# Have a quick look

glimpse(msleep)

# Describe the spread, centrality and variance
min(msleep$awake)
max(msleep$awake)
range(msleep$awake)
IQR(msleep$awake)
median(msleep$awake)
var(msleep$awake)

# summarise selected variables
summary(msleep)
summary(msleep$sleep_total)

msleep %>%
  select(sleep_total, brainwt) %>%
  summary

View(msleep)

#Create a summary table
## For each category of "vore",
## Show the min, max, difference
## and average "Sleep_total"
## and avg data by the average

msleep %>%
  select(name, vore, sleep_total)

msleep %>%
  drop_na(vore) %>%
  group_by(vore) %>%
  summarise(Lower = min(sleep_total),
            Average = mean(sleep_total),
            Upper = max(sleep_total),
            Difference = 
              max(sleep_total)-min(sleep_total))%>%
  arrange(Average) %>%
  View()

# Creating contingency tables

library(MASS)
attach(Cars93)  

glimpse(Cars93)

table(Origin)
