#1
library(readxl)
Results <- read_excel("Results.xlsx")
ResultsData <- as.data.frame(Results)
rownames(ResultsData) <- ResultsData[,1]
ResultsData[,1] <- NULL
ResultsData

#2a
summary(ResultsData)
#b
rowMeans(ResultsData[1,])
#c
plot(lm(ResultsData))

#4a
hist(Results$`Term 5`,xlab = "Results In Percentage",col = "Dark Green",border = "Black",main = "Histogram Showing Results For Term 5")
#b
boxplot(Results$`Term 3`, col="violet", border="dark blue", ylab = "Results In Percentage", main="Box Plot Showing Results For Term 3")

#5
library(reshape2)
marks <- melt(Results)
colnames(marks)<-c("Subject","Term","Values")
head(marks)
marks
library(ggplot2)
ggplot(marks,aes(x=Subject,y=Values))+geom_point(colour="#000099")+geom_line(colour="#CC0000")
