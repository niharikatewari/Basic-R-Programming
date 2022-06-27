lungcapdata <- read.csv("C:/Users/Lab Pc/Desktop/Datasets/MSc files of R/third/lungcapdata.csv")

View(lungcapdata)
attach(lungcapdata)
names(lungcapdata)

#Ho - mu < 8
#one sided 95% CI for mu

t.test(LungCap, mu=8,alternative ="less", conf.level = 0.99)

t.test(LungCap, mu=8,alt ="less", conf = 0.95)

#two sided
t.test(LungCap, mu=8,alt ="two.sided", conf = 0.99)

Test <- t.test(LungCap, mu=8,alt ="two.sided", conf = 0.99)

attributes(Test)
Test$conf.int
Test$p.value

#two-sample t-test

boxplot(LungCap ~ Smoke)

#Ho - mean lung cap of smokers = of non smokers
#two-sided test - assume non equal variances

t.test(LungCap ~ Smoke, mu=0,alt="two.sided", paired = F, conf.level = 0.95, var.eq=F)
t.test(LungCap ~ Smoke)
t.test(LungCap[Smoke=="no"], LungCap[Smoke=="yes"])

t.test(LungCap ~ Smoke, mu=0,alt="two.sided", paired = F, conf.level = 0.95, var.eq=TRUE)

var(LungCap[Smoke=="yes"])
var(LungCap[Smoke=="no"])

#Levene's test
# Ho- population variances are equal
library(car)
leveneTest(LungCap ~ Smoke)
