d <- read.csv(file="C:/Users/Lab Pc/Desktop/Datasets/MSc files of R/third/ChickData.csv", header = T, sep=",")
View(d)
names(d)
levels(d$feed)

table(d$feed)

boxplot(d$weight~d$feed, las=1, ylab= "weight(g)", xlab="feed", main="Weight by feed")

mean(d$weight[d$feed=="casein"])
mean(d$weight[d$feed=="meatmeal"])

#OR other way

with(d,tapply(weight, feed, mean))

#lets calculate the diff in means: (casein - meatmeal)
Obs.Diff.In.Means <- (mean(d$weight[d$feed=="casein"])- mean(d$weight[d$feed=="meatmeal"]))
Obs.Diff.In.Means

# and a fancier way to do that  ( - to have it be casein-meatmeal)
-diff(with(d,tapply(weight, feed, mean)))

#same for medians
median(d$weight[d$feed=="casein"])
median(d$weight[d$feed=="meatmeal"])

Obs.Diff.In.Medians <- (median(d$weight[d$feed=="casein"])- median(d$weight[d$feed=="meatmeal"]))                    
Obs.Diff.In.Medians

-diff(with(d,tapply(weight, feed, median)))

################################################
#############BOOTSTRAP INTERVAL#################
################################################
set.seed(13579) # for reproducibility
n.c <- 12
n.m <- 11
B <- 10000   # number of bootstrap samples

# now get bootstrap samples ( without loops!)
Bootstrap.casein <- matrix(sample(d$weight[d$feed=="casein"],size=B*n.c, replace=TRUE), nrow=n.c,ncol=B)
Bootstrap.meatmeal <- matrix(sample(d$weight[d$feed=="meatmeal"],size=B*n.c, replace=TRUE), nrow=n.c,ncol=B)

#chech those
dim(Bootstrap.casein); dim(Bootstrap.meatmeal)

#check to make sure they are not empty!
Boot.casein[1:5,1:5]
Bootstrap.meatmeal[1:5,1:5]

#cal the diff in means 
Boot.Diff.In.Means <- colMeans(Bootstrap.casein) - colMeans(Bootstrap.meatmeal)
#check that
length(Boot.Diff.In.Means)
