install.packages("dplyr")
#To load dplyr package
library("dplyr")
#To load datasets package
library("datasets")
#To load iris dataset
data(iris)
summary(iris)

#To select all columns from Sepal.Length to Petal.Length
selected1 <- select(iris, Sepal.Length:Petal.Length)
#To print first four rows
head(selected1, 4)                           
#To select columns with numeric indexes
selected1 <- select(iris,c(3:5))
head(selected1)
#a)Create a new column called proportion, which is the ratio of Sepal.Length to Sepal.Width. HINT: Use mutate().
col1 <- mutate(iris, Proportion = round(Sepal.Length/Sepal.Width, 2))
tail(col1)
#b)Compute the average number of Sepal.Length, apply the mean() function to the column Sepal.Length, and call the summary value "avg_slength". HINT: Use summarize().
summarised <- summarise(iris, Avg_slength = mean(Sepal.Length))
head(summarised)
#c)Select the first three columns of the iris dataset using their column names. HINT: Use select().
selected <- select(iris, Sepal.Length, Sepal.Width, Petal.Length)
head(selected)