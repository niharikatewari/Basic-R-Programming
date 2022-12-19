library(readr)
grass <- read_csv("C:/Kunal/Data Science/R programing/grass.csv")
View(grass)

boxplot(grass$rich~grass$graze, las=1, ylab= "rich", xlab="graze", main="grass,csv")

#calculate mean
mean(grass$rich[grass$graze=="mow"])
mean(grass$rich[grass$graze=="unmow"])
#OR other way
with(grass,tapply(rich, graze, mean))
test.stat1 <- abs(mean(grass$rich[grass$graze=="mow"])- (mean(grass$rich[grass$graze=="unmow"])))
test.stat1
#OR ANOTHER WAY
abs(diff(with(grass,tapply(rich, graze, mean))))

#calculate median
median(grass$rich[grass$graze=="mow"])
median(grass$rich[grass$graze=="unmow"])
#OR OTHER WAY
with(grass,tapply(rich, graze, median))
test.stat2 <- abs(median(grass$rich[grass$graze=="mow"])- (median(grass$rich[grass$graze=="unmow"])))
test.stat2
#OR ANOTHER WAY
abs(diff(with(grass, tapply(rich, graze, median))))

## Let's take a look at the 3 "Classic" hyp tests we could consider
## each of which comes with their own limitations

#let's look at independent 2-sample t-test
t.test(grass$rich~grass$graze, paired=F, var.eq=F)

#look at wilcoxon aka mann-Whitney U
wilcox.test(grass$rich~grass$graze,paired=F) #tests Ho:medians are equal

#look at kolmogorov-smirnov 2-sample test
ks.test(grass$rich[grass$graze=="mow"],grass$rich[grass$graze=="mow"], paired = F)

#############################################################
########### BOOT sTRAP#######################################
##############################################################
set.seed(112358) # for reproducibility
n <-length(grass$graze)
n
B <- 10000   # number of bootstrap samples
variable <- grass$rich   #variable we will reample from

# now get bootstrap samples ( without loops!)
BootstrapSamples <- matrix(sample(variable,size=n*B, replace=TRUE), nrow=n,ncol=B)
dim(BootstrapSamples)

# now calculate the means (Yc and Ym) for each of the bootstrap samples
#( the ineffficient but transparent way... best to start simple and once working
#well then make code efficient)
#initialize the vector to store the TEST-STATS
Boot.test.stat1 <- rep(0,B)
Boot.test.stat2 <- rep(0,B)
#run through a loop, each time calculating the bootstrap test.stat
# NOTE: could make this faster by writing a "function" and then
# using apply to apply it to columns of "BootSamples"

for (i in 1:B) {
  #calculate the boot-test-stat1 and save it
  Boot.test.stat1[i] <- abs(mean(BootstrapSamples[1:3,i]) - 
                              mean(BootstrapSamples[4:9,i]))
  #calculate the boot-test-stat2 and save it
  Boot.test.stat2[i] <- abs(median(BootstrapSamples[1:3,i]) - 
                              median(BootstrapSamples[4:9,i]))
}


#OBSERVED TEST STATS
test.stat1;test.stat2

#take a look at first 20 bootstrap -TEST Stats for 1 and 2
round(Boot.test.stat1[1:20],1)
round(Boot.test.stat2[1:20],1)

# let's calculate the bootstrap p-value
#Notice how we can ask R for a try/false question ( for first 20)
(Boot.test.stat1 >=test.stat1)[1:20]
# if we ask for the mean of all those, it treats 0=FALSE, 1=TRUE
#..calculate p-value
mean(Boot.test.stat1 >=test.stat1)
# let's calculate the p-value for test statistic 2 (abs diff in medians)
mean(Boot.test.stat2 >= test.stat2)
table(grass$graze)

plot(density(Boot.test.stat1),
     xlab=expression(group("|", bar(Yc)-bar(Ym),"|")))
