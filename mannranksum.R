#Wilcoxon rank sum test/ mann whitney - non parametric - dii in medians for 2 independent populations

lungcapdata <- read_excel("C:/Users/Lab Pc/Desktop/Datasets/MSc files of R/third/lungcapdata.csv")
#data1 <- read.table(file.choose(), header=TRUE, sep = "\t")

View(lungcapdata)
attach(lungcapdata)
names(lungcapdata)

boxplot(LungCap ~ Smoke)

#Ho median lung capacity of smokers = that of non smokers
# two sided test

wilcox.test(LungCap ~ Smoke, mu=0, alt="two.sided", conf.int=T, conf.level=0.95, paired=F, exact=T, correct=T)


wilcox.test(LungCap ~ Smoke, mu=0, alt="two.sided", conf.int=T, conf.level=0.95, paired=F, exact=F, correct=T)