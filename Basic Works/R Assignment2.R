diabetes <- read.csv('C:\Users\Akash pratap singh\Downloads\diabetes.csv')

diabetes
install.packages ("ggplot2")
library(ggplot2)


#bar plot
ggplot(diabetes, aes(x =BMI)) +
  geom_bar()+
  labs(title="BAR PLOT", 
       subtitle="BMI", 
       caption="source: Diabetes")

#dot plot
ggplot(diabetes, aes(x=Pregnancies, y=BloodPressure)) + 
  geom_point(col="darkblue", size=1.8)+
  labs(title="DOT PLOT", 
       subtitle="BP level during preganancy", 
       caption="source: Diabetes")

#counts plot
ggplot(diabetes, aes(SkinThickness, Glucose))+ 
  geom_count(col="darkgreen", show.legend=F ,size=1.7) +
  labs(title="counts plot", 
       subtitle ="Glucose level", 
       caption="source: Diabetes") 

#Box plot
ggplot(diabetes, aes(Pregnancies ,BMI)) +
  geom_boxplot( col="darkred", varwidth=T, fill="plum") +
  labs(title="Box plot", 
       subtitle="BMI measure during pregnancy", 
       caption="source: Diabetes")

#waffle chart
ggplot(diabetes, aes(x=BloodPressure , y=Insulin  , fill = "category")) +
  geom_tile(color = "black", size = 1.2) +
  labs(title="waffle chart", 
       subtitle="Insulin growth", 
       caption="source: Diabetes")

#Diverging bars
ggplot(diabetes, aes(x=SkinThickness, y=Pregnancies, label=Pregnancies)) + 
  geom_bar(stat='identity', aes(fill="Pregnancies_type"), width=.5) +
  labs(title="Diverging bars", 
       subtitle="Pregnancies", 
       caption="source: Diabetes")

#violin plot
ggplot(diabetes, aes(BloodPressure, SkinThickness)) +
  geom_violin() +
  labs(title="Violin plot", 
       subtitle="SkinThickness ", 
       caption="source: Diabetes")


