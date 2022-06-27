#Odds ratio, Relative risk and risk difference in R
lungcapdata <- read_excel("C:/Users/HP-PC/Desktop/lungcapdata.xlsx")
#data1 <- read.table(file.choose(), header=TRUE, sep = "\t")

attach(lungcapdata)
names(lungcapdata)

TAB <- table(Gender,Smoke)
TAB

barplot(TAB, beside=T, legend=T)

#chi-square gives no strength or direction of any association
#odd ratio, relative risk and risk diff are measure of strength or direction for categorical variables

install.packages('epiR') #will take time to load
library(epiR)

epi.2by2(TAB, method="cohort.count", conf.level=0.95)
#odd ratio = odds of female not smoking are 0.71 times the odds of male not smoking

1/0.71
#odd ratio = odds of male not smoking are 1.4 times the odds of female not smoking

TAB
TAB2 <- matrix(c(44,314,33,334), nrow=2, byrow=T)
TAB2

TAB3 <- cbind(TAB[,2], TAB[,1])
TAB3

epi.2by2(TAB3, method="cohort.count")
colnames(TAB3) <- c("yes","no")

#odd ratio = odds of female not smoking are 1.42 times the odds of male not smoking
