#Statistical Ecology Exam 1 Matthew Winter 
install.packages("MASS")
library('MASS')
data('mammals')
?mammals
#mammals is a data frame with average brain and body weights for 62 species of land mammals ---- 
###Question 1A
head(mammals)
library(ggplot2)
br <- ggplot(aes(x = body, y = brain), data = mammals) +
  geom_point(size=4.5, shape=21, fill="forestgreen", color="black", stroke=1, alpha=0.4) +
  stat_smooth(method = "lm", alpha=0.5, color="black")
br
brain1 <- lm(brain~body,data =  mammals )
set.seed(1)
par(mfrow=c(2,2))
plot(brain1)
summary(brain1)
#Coefficients:
#              Estimate Std. Error t value Pr(>|t|)    
#(Intercept) 91.00440   43.55258    2.09   0.0409 *  
#  body      0.96650    0.04766   20.28   <2e-16 ***
#  ---
#  Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1
#
#Residual standard error: 334.7 on 60 degrees of freedom
#Multiple R-squared:  0.8727,	Adjusted R-squared:  0.8705 
#F-statistic: 411.2 on 1 and 60 DF,  p-value: < 2.2e-16










