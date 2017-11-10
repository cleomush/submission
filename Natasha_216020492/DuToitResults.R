library(xlsx)
workbook <- "C:/Users/Queengamer/Desktop/Results.xlsx"
mydataframe <- read.xlsx(workbook, 1)
mydataframe

summary(mydataframe)

x <- as.numeric(mydataframe[1,2:5])
mean(x)

plot(mydataframe$Term.1,mydataframe$Subject.name)
mod <- lm(mydataframe$Subject.name ~ mydataframe$Term.1)
abline(mod, col="blue")

hist(mydataframe$Term.5)

boxplot(mydataframe$Term.3)

library(reshape2)
Results<-melt(mydataframe)
colnames(Results)<-c("Subject Name","Term","Marks")
head(Results)
library(ggplot2)
ggplot(Results, aes(x=Term, y=Marks))+geom_point()