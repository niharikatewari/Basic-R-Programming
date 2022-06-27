#Paired t-test - Parametric method

BP <- read.csv("C:/Users/HP-PC/Desktop/BP.csv")

View(BP)
attach(BP)
names(BP)

dim(BP)
BP[1:3,]

help(t.test)

boxplot(Before, After)

plot(Before, After)

abline(a=0,b=1)

#Ho = Mean diff in SBP is 0
# two - sided test

t.test(Before, After, mu=0,alt="two.sided", paired = T, conf.level = 0.99)

t.test(After,Before, mu=0,alt="two.sided", paired = T, conf.level = 0.99)
