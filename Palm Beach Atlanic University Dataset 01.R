universityDataset01 <- read.csv("C:\\Users\\moham\\Downloads\\Palm Beach Atlantic University Dataset 01.csv")
str(universityDataset01)

# Histogram for the data set
hist(universityDataset01$Salaries)
hist(universityDataset01$Evaluation)
hist(universityDataset01$Articles)

# Box plot for the data set
boxplot(universityDataset01$Salaries, horizontal = TRUE)
boxplot(universityDataset01$Evaluation, horizontal = TRUE)
boxplot(universityDataset01$Articles, horizontal = TRUE)

# Scattered plot of the data set
plot(universityDataset01)

# Co-relation of the data set
cor(universityDataset01)

# Learning and display Linear Model 
linearModel <- lm(universityDataset01$Salaries ~ universityDataset01$Evaluation + universityDataset01$Articles)
linearModel
summary(linearModel)

linearModel01 <- lm(universityDataset01$Salaries ~ universityDataset01$Articles)
summary(linearModel01)

plot(fitted(linearModel), resid(linearModel))

qqnorm(resid(linearModel))
 