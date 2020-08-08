#Time series Forecasting of Sales

#load dataset
library(readxl)
Coca_Cola <- read_excel("Coca Cola.xlsx", skip = 2)
View(Coca_Cola)

#create a time predictor variable 't'
t=1:38
View(Coca_Cola)
Coca_Cola=data.frame(Coca_Cola,t)

#create quarter predictor variable 'Q'
Q=substring(Coca_Cola$Quarter,1,2)
Coca_Cola=data.frame(Coca_Cola,Q)

#create dummy variable for 'Q'
qdummies=model.matrix(~Q+0,data = Coca_Cola)
Coca_Cola=data.frame(Coca_Cola,qdummies)

#build exponential multiplicative model 
ModelD=lm(log(Sales)~t+QQ1+QQ2+QQ3,data = Coca_Cola)
summary(ModelD)

#visualize 
plot(t,Coca_Cola$Sales,xaxt='n',yaxt='n',col='blue',xlab ='Quarter',ylab ='Sales',type='b')
axis(1,at=t,labels = Coca_Cola$Quarter)
axis(2,at=seq(1000,5000,500))
ls(ModelD)
lines(t,exp(ModelD$fitted.values),type = 'b',col='red')
