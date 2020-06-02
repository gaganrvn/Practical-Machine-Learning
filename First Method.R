library(lattice); library(ggplot2); library(caret); library(randomForest); library(rpart); library(rpart.plot);

set.seed(1234)

trainingset <- read.csv("pml-training.csv", na.strings=c("NA","#DIV/0!", ""))
testingset <- read.csv("pml-testing.csv", na.strings=c("NA","#DIV/0!", ""))

trainingset<-trainingset[,colSums(is.na(trainingset)) == 0]
testingset <-testingset[,colSums(is.na(testingset)) == 0]

trainingset   <-trainingset[,-c(1:7)]
testingset <-testingset[,-c(1:7)]

traintrainset <- createDataPartition(y=trainingset$classe, p=0.75, list=FALSE)
TrainTrainingSet <- trainingset[traintrainset, ] 
TestTrainingSet <- trainingset[-traintrainset, ]

plot(TrainTrainingSet$classe, col="yellow", main="Plot of levels of variable classe within the TrainTrainingSet data set", xlab="classe", ylab="Frequency")







