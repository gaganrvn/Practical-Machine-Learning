model2 <- randomForest(classe ~. , data=TestTrainingSet, method="class")

prediction2 <- predict(model2, TestTrainingSet, type = "class")

confusionMatrix(prediction2, TestTrainingSet$classe)

