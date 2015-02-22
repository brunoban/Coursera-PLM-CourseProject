library(plyr)
library(RCurl)
URLTrain<- "https://d396qusza40orc.cloudfront.net/predmachlearn/pml-training.csv"
download.file(URLTrain, destfile = "./train.csv", method="curl")
URLTest<- "https://d396qusza40orc.cloudfront.net/predmachlearn/pml-testing.csv"
download.file(URLTest, destfile = "./test.csv", method="curl")

testDB<-read.csv("./test.csv")

trainDB<-read.csv("./train.csv")


trainDB[,"classe"]
