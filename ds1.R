mydata<- read.csv("C:/Users/Zuaina/Downloads/d1.csv",header = TRUE,sep = ",")
mydata

nrow(mydata)
ncol(mydata)
dim(mydata)

names(mydata)

str(mydata)

mean(mydata$Loan)
mean(mydata$Interest_rate)
median(mydata$Loan)
median(mydata$Interest_rate)
names(sort(-table(mydata$Loan)))[1]
names(sort(-table(mydata$Interest_rate)))[1]

max(mydata$Loan)-min(mydata$Loan)
max(mydata$Interest_rate)-min(mydata$Interest_rate)
sd(mydata$Loan)
sd(mydata$Interest_rate)

names(sort(-table(mydata$Credit_Score)))[1]
