library(tidyverse)
view(mpg)
?mpg

ggplot(data=mpg)+
  geom_point(mapping=aes(x=displ , y=hwy))+
  labs(title="Highway miles according to displacement of engine ", 
       caption="Source: 'mpg' dataset",
       y="highway miles per gallon")+
  theme(plot.background=element_rect(fill="pink"))

ggplot(data=mpg ,aes(x=manufacturer,y=hwy ))+
  geom_bar(stat = "identity",width = 0.5, fill="tomato2")+
  labs(title="Manufacturer of vehicles", 
       caption="Source: Frequency of Manufacturers from 'mpg' dataset",
       y="highway miles per gallon")

ggplot(mpg, aes(x = hwy)) +
  theme_bw()+
  geom_histogram(binwidth = 5,color="darkblue", fill="lightblue")+
  labs(title = "Car Mileage distribution",
       x="highway miles per gallon",
       y="count of car models")+
  theme(plot.background=element_rect(fill="darkseagreen"))+
  theme(plot.title = element_text(size=20, face="bold"))

ggplot(mpg, aes(x = class, y = hwy )) +
  geom_boxplot(fill="Pink")+
  labs(title="Highway Mileage grouped by Class of Vehicle",
       caption="Source: mpg",
       x="Class of vehicle",
       y="Highway Miles per Gallon")+
  theme(plot.background=element_rect(fill="lightyellow"))

ggplot(mpg, aes(cty))+
  geom_density(aes(fill=factor(cyl)), alpha=0.8) + 
  labs(title="City Mileage grouped by Number of cylinders",
       caption="Source: mpg",
       x="City Mileage",
       fill="No. of Cylinders")

ggplot(mpg, aes(class, cty))+
  geom_violin() + 
  labs(title="City Mileage on basis Class of vehicle",
       caption="Source: mpg",
       x="Class of Vehicle",
       y="City Mileage")+
  theme(plot.background=element_rect(fill="lightblue"))





 
