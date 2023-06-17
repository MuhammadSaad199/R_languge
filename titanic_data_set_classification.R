titanic_train <- read.csv("C:/Users/dell/Desktop/R Language Programming/titanic_train.csv")
titanic_test <- read.csv("C:/Users/dell/Desktop/R Language Programming/titanic_test.csv")
str(titanic_train)
str(titanic_test)

#Installing Packages
require(C50)

# Splitting the training data into dependent and independent
model_train <- C5.0(titanic_train[, c(3,5)], titanic_train[,2])
model_train
titanic_train[,2] <- factor(titanic_train[,2])
str(titanic_train)

# Model Creation
model_train1 <- C5.0(titanic_train[, c(3,5)], titanic_train[,2])
model_train1

model_train2 <- C5.0(titanic_train[,c(3,5,6)], titanic_train[,2])
model_train2

# Test Model Creation
predict1 <- predict(model_train1,titanic_test[,c(2,4)])
predict1

predict2 <- predict(model_train1,titanic_test[,c(2,4,5)])
predict2

table(predict1, predict2)

Y <- data.frame(titanic_test[,1],predict1)
Y

write.csv(Y, "C:/Users/dell/Desktop/R Language Programming/titanic_test1.csv")
