data<- read.csv("C:/Users/91999/Documents/hair_color.csv")
data

names(data)

levels(data$hair_color)
table(data$hair_color)

boxplot(data$Age~data$hair_color, las=1, ylab= "Age", xlab="hair_color", main="Age by hair_color")

#mean
mean(data$Age[data$hair_color=="black"])
mean(data$Age[data$hair_color=="white"])

test.stat1 <- abs(mean(data$Age[data$hair_color=="black"])- mean(data$Age[data$hair_color=="white"]))
test.stat1
#or
abs(diff(with(data,tapply(Age,hair_color, mean))))

#median
median(data$Age[data$hair_color=="black"])
median(data$Age[data$hair_color=="white"])

test.stat2<-abs(median(data$Age[data$hair_color=="black"])-median(data$Age[data$hair_color=="white"]))
test.stat2
#or
abs(diff(with(data,tapply(Age,hair_color,median))))


#t-test
t.test((data$Age~data$hair_color), paired=F, var.eq=F)
  
#wilcoxon aka mann whitney U test
wilcox.test((data$Age~data$hair_color), paired=F)

#kolmogorov-smirnov 2-sample test
ks.test(data$Age[data$hair_color=="black"],data$Age[data$hair_color=="white"], paired = F)


#BOOT*STRAP
set.seed(112358) 
n <-length(data$hair_color)
n
B <- 10000   
variable <- data$Age


BootstrapSamples <- matrix(sample(variable,size=n*B, replace=TRUE), nrow=n,ncol=B)
dim(BootstrapSamples)

Boot.test.stat1 <- rep(0,B)
Boot.test.stat2 <- rep(0,B)

for (i in 1:B) {
  
  Boot.test.stat1[i] <- abs(mean(BootstrapSamples[1:12,i]) - 
                              mean(BootstrapSamples[13:23,i]))
  Boot.test.stat2[i] <- abs(median(BootstrapSamples[1:12,i]) - 
                              median(BootstrapSamples[13:23,i]))
}

test.stat1;test.stat2

round(Boot.test.stat1[1:20],1)
round(Boot.test.stat2[1:20],1)


(Boot.test.stat1 >=test.stat1)[1:20]

mean(Boot.test.stat1 >=test.stat1)

mean(Boot.test.stat2 >= test.stat2)
table(data$hair_color)

plot(density(Boot.test.stat1),
     xlab=expression(group("|", bar(Yc)-bar(Ym),"|")))


##################################################################################