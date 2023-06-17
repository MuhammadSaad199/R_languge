# installing the package
install.packages("C50")
require(C50)

# Loading the data
data("iris")
str(iris)

# Reshuffling the data
set.seed(9850)
g <- runif(nrow(iris))
new_iris <- iris[order(g),]
str(new_iris)

# Independent and Dependent columns
independent = new_iris[1:150,-5]
dependent = new_iris[1:150, 5]
str(independent)
str(dependent)

# Train Test Split
train_model = C5.0(independent[1:100,1], dependent[1:100,1])







data("airquality")
str(airquality)

df <- data("airquality")
df