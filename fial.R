mydata<- read.csv("C:/Users/Zuaina/Downloads/Book1.csv",header = TRUE,sep = ",")
mydata

dim(mydata)

str(mydata)
names(mydata)

library(class)

ran <- sample(1:nrow(mydata), 0.9 * nrow(mydata))
nor <-function(x) { (x -min(x))/(max(x)-min(x))}
mydata_norm <- as.data.frame(lapply(mydata[,c(2,3,4,5)], nor))
summary(mydata_norm)
str(mydata_norm)

mydata_train <- mydata_norm[ran,] 
mydata_test <- mydata_norm[-ran,] 

mydata_target_category <- mydata[ran,2]
mydata_test_category <- mydata[-ran,2]

pr <- knn(mydata_train,mydata_test,cl=mydata_target_category,k=10)
tab <- table(pr,mydata_test_category)
tab
accuracy <- function(x){sum(diag(x)/(sum(rowSums(x)))) * 100}
accuracy(tab)

tab
pr


