data <- read.csv(file = "C:/Users/choud/Downloads/covid_19_data_cleaned.csv")
str(data)
install.packages("lubridate")
View(data)
library(lubridate)
data$Date <- ymd(data$Date)
#data
str(data)
install.packages("plyr")
library(plyr)
data <- ddply(data, .(Date, Country),numcolwise(sum))
data <- within(data, rm(Lat,Long))
str(data)
us <- subset(data, Country=='US')
latest <- subset(data, Date==max(Date))
latest <- latest[order(latest$Confirmed, decreasing = TRUE),]
top10 <- latest[1:10,]
rownames(top10) <- 1:10
top10
install.packages("ggplot2")
library(ggplot2)
ggplot(data, aes(x = Country , y = Recovered))+
  theme_bw()+
  geom_boxplot()+
  labs(y= "Recovered",
       x="Country",
       title = "Covied 19 Recovered Cases"
  )
