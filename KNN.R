#KNN in R
 data <- iris

 #Assigning row lables
 
 row_lables = data[,5]

 # wE want to scale our data
 
 data[,1:4] <- scale(data[,1:4])

 #set seed
 set.seed(123)
 
 
 #Get the size to split where size is the size of training = 80/20
 size <- floor(0.8 * nrow(data))

 
#obtain row numbers
 train_ind <- sample(seq_len(nrow(data)), size = size)

 #Training lables
 train_lables <- data[train_ind,5]

 #testing lables
 test_lables <- row_lables[-train_ind]
 
 #training data
 data_train <- data[train_ind,1:4]
 
 #testing data
 data_test <- data[-train_ind,1:4]
 
 View(data_test)
 View(data_train)
 
 
 
 # Model run
 library(class)   # for KNN
 prediction <- knn(train = data_train,
                   test = data_test,
                   cl = train_lables,
                   k = round(sqrt(nrow(data_train))))
 
 #Let us focus on plotting
 plot_predictions <- data.frame(
   data_test$Sepal.Length,
   data_test$Sepal.Width,
   data_test$Petal.Length,
   data_test$Petal.Width,
   prediction = prediction)
 
 # renaming the columns
 colnames(plot_predictions) <- c("sepal.Length",
                                 "sepal.width",
                                 "petal.lenght",
                                 "petal.width",
                                 "predicted")
 
 # Lets plot our data
 library(ggplot2)
library(gridExtra) 

 p1 <- ggplot(plot_predictions, aes(
   sepal.Length,
   sepal.width,
   color = predicted,
   fill = predicted)) +
   geom_point(size = 5)+
   geom_text(aes(label = test_lables), hjust = 1, vjust = 2)+
   ggtitle("Predicted relation between Sepal length and petal width")+
   theme(plot.title = element_text(hjust = 0.5))+
   theme(legend.position = "none")
  
p2 <- ggplot(plot_predictions, aes(
  petal.lenght,
  petal.width,
  color = predicted,
  fill = predicted)) +
  geom_point(size = 5)+
  geom_text(aes(label = test_lables), hjust = 1, vjust = 2)+
  ggtitle("Predicted relation between Petal length and petal width")+
  theme(plot.title = element_text(hjust = 0.5))+
  theme(legend.position = "none")

grid.arrange(p1,p2,ncol = 2)
