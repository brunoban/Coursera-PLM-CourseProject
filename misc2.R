library(caret)

modFit <- train(classe ~ ., method="rpart",data=trainDB)
print(modFit$finalModel)

library(rattle)
fancyRpartPlot(modFit$finalModel)

predict(modFit,newdata=testing)   #party rpart tree bagEarth treeBag bagFda