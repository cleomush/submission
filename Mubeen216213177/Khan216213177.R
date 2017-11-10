data=readxl::read_xlsx(file.choose())
data
summary(data)
hist(data$`Term 5`,col = "blue")
boxplot(data$Term3,col= "yellow")
library(reshape2)          
Marks=melt(data)
colnames(Marks)=c("Subjects","Terms","Mark")
head(Marks)
library(ggplot2)
ggplot(Marks,aes(x=Terms,y=Mark))+geom_point()
git add
