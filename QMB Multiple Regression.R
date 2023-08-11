rm(list=ls())
install_formats()
library(rio)
library(readxl)
QMB_ <- read_excel("QMB .xlsx")
View(QMB_)
colnames(QMB_)=tolower(make.names(colnames(QMB_)))
str(QMB_) ## ship carrier -- o for fedex and 1 for UPS 
#CODE
QMB_$ship_carrier<-as.factor(QMB_$ship_carrier)
str(QMB_)

#CODE
table(QMB_$ship_carrier)
attach(QMB_)
#SIMPLE REGRESSION(Y,X1)
out1<- lm(late_ship~emp_absent, data= QMB_)
summary(out1)
#SIMPLE REGRESSION(Y, X2)
out2<- lm(late_ship~total_ship, data= QMB_)
summary(out2)
## Simple Regression model of the form (y, X3)

  out3<- lm(late_ship~ship_carrier, data= QMB_)
summary(out3)

## Multiple Regression model of the form (y, X1, X2)


  out4<- lm(late_ship~emp_absent+total_ship, data= QMB_)
summary(out4)

## Multiple Regression model of the form (y, X1, X3)

  out5<- lm(late_ship~emp_absent+ship_carrier, data= QMB_)
summary(out5)
## Multiple Regression model of the form (y, X2, X3)

  out6<- lm(late_ship~total_ship+ship_carrier, data= QMB_)
summary(out6)


## Full Multiple Regression model of the form (y, X1, X2, X3)


  out7<- lm(late_ship~emp_absent+total_ship+ship_carrier, data= QMB_)
summary(out7)
##Multiple regression model using an interaction term of the form (y, X1, X2, X1X2)

  out8<- lm(late_ship~emp_absent+total_ship+emp_absent*total_ship, data= QMB_)
summary(out8)
##simple regression model using squared terms of the form (y, X1, X12)

  ## regression of squared values
  QMB_$emp_abs2 <- QMB_$emp_absent^2
QMB_$total_ship2<- QMB_$total_ship^2

out9<- lm(late_ship~emp_absent+emp_abs2, data = QMB_)
summary(out9)
##simple regression model using squared terms of the form (y, X2, X22)

  out10<- lm(late_ship~total_ship+total_ship2,data = QMB_)
summary(out10)
##Determining which fit is the best fit
install.packages("stargazer")
  library(stargazer)
stargazer(out1,out2,out3,out4,out5,out6,out7,out8,out9,out10, type= "text", out="Project1.htm")
## Checking LINE assumptions

  par(mfrow=c(2,2))
#Linearity
plot(QMB_$late_ship, out10$fitted.values,
     pch=16, main="Late Shipment Vs Fitted Values")
abline(0,1,lwd=3,col="red")
#Normality
qqnorm(out10$residuals,pch=16,
       main="Normality of Residuals")
qqline(out10$residuals,lwd=3,col="red")
hist(out10$residuals, col = "cadetblue3", probability = TRUE,
     main="Histogram of Residuals")
curve(dnorm(x,0,sd(out10$residuals)),
      from=min(out10$residuals),
      to=max(out10$residuals),
      lwd=3,col="brown4",add=TRUE)
#Equality of Variances
plot(out10$fitted.values,rstandard(out10),pch=16,
     main="Equality of Variance- Standardized Residuals")
abline(0,0,col="red",lwd=3)
par(mfrow=c(1,1))

##Written interpretations of the model’s slope and intercept coefficients.
summary(out10)
## Two types of prediction confidence interval
late_ship_predict<-  data.frame(total_ship = 39, total_ship2=1521)
predict(out10,late_ship_predict,interval = "predict")
predict(out10,late_ship_predict,interval = "confidence")
