library(lattice); library(ggplot2); library(caret); library(randomForest); library(rpart); library(rpart.plot);

model1 <- rpart(classe ~., data=trainingset, method="class")

prediction1 <- predict(model1, TestTrainingSet, type = "class")

rpart.plot(model1, main="Classification Tree", extra=102, under=TRUE, faclen=0)

confusionMatrix(prediction1, TestTrainingSet$classe)