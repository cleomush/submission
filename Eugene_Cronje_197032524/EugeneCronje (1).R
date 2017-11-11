library(xlsx)
workbook <- "C:/Users/Eugene/Desktop/Results.xlsx"


myframe <- read.xlsx(workbook, 1)
myframe

summary(myframe)
x<-as.numeric(myframe[1,2:5])

mean(x)
plot(myframe$Term.1,myframe$Subject.name)
mod<-lm(myframe$Subject.name ~ myframe$Term.1)

abline(mod, col="green")

hist(myframe$Term.5)
boxplot(myframe$Term.3)
library(reshape2)


myResults<-melt(myframe)
colnames(myResults)<-c("Subject Name","Term","Marks")

head(myResults)
library(ggplot2)
ggplot(myResults, aes(x=Term, y=Marks))+geom_point()


