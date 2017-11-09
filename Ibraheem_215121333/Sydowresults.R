library(xlsx)
results = "C:/Users/Dell/Desktop/Results.xlsx"
mydataframe = read.xlsx(results,1)
mydataframe
summary(mydataframe)
adf=c(mydataframe$Term.1[1:1], mydataframe$Term.2[1:1], mydataframe$Term.3[1:1],
            mydataframe$Term.4[1:1],mydataframe$Term.5[1:1])
mean(adf)
plot(lm(mydataframe))
hist(mydataframe$Term.5)
boxplot(mydataframe$Term.3)
library(reshape2)
FirstYear=melt(mydataframe)
colnames(FirstYear)=c("Subject","Terms","marks")
FirstYear
library(ggplot2)
ggplot(FirstYear,aes(x=Subject,y=marks, group=Terms))+geom_point(aes(shape=Terms))+geom_line(aes(linetype=Terms))
