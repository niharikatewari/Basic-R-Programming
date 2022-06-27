#chi-square and fisher test included in this file
#chi- square test is appropriate in case of testing independence between two two categorical variables
lungcapdata <- read.csv("C:/Users/Lab Pc/Desktop/Datasets/MSc files of R/third/lungcapdata.csv")
#data1 <- read.table(file.choose(), header=TRUE, sep = "\t")
View(lungcapdata)
attach(lungcapdata)
names(lungcapdata)

#Pearson's Chi-squared Test
help("chisq.test")
?chisq.test

#gender and smoke are categorical variable
table(Gender,Smoke)

TAB = table(Gender,Smoke)
TAB

barplot(TAB, beside = T, legend=T)

chisq.test(TAB, correct = T)

CHI = chisq.test(TAB, correct = T)
CHI

attributes(CHI)

CHI$expected

#FISHER'S test - non parametric alt to chi-square test
fisher.test(TAB, conf.int = T, conf.level = 0.99)
