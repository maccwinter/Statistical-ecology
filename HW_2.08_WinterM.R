#Homework 2.8 Matthew Winter 

data("trees")
install.packages('lmtest')
library('lmtest')
head(trees)
library(ggplot2)
tr <- ggplot(aes(x = Girth, y = Height), data = trees) +
  geom_point(size=4.5, shape=21, fill="forestgreen", color="black", stroke=1, alpha=0.4) +
  stat_smooth(method = "lm", alpha=0.5, color="black")
tr
trm1 = lm(Height~Girth, data=trees)
set.seed(1)
par(mfrow = c(2,2))
plot(trm1)

#1: The scale location plot does not show a horizontal line with equally, randomly spread points,----
#meaning the equal variance assumption is not met. 
#2 ---- We do not want anything in the top and bottom right corners of the Residuals vs Leverage
#plot. This plot seems to be alright in that there are not points withing those corners. 
data("InsectSprays")
head(InsectSprays)

ins = lm(count~spray, data=InsectSprays)
summary(ins)
par(mfrow = c(1,1))
plot(count~spray, data=InsectSprays, ylim=c(0,400))
points(count~spray, data=InsectSprays, col=rgb(1,0,0,.3))
#3 Sprays C,D, and E are all statistically different from spray A for the response variable, count. -----
insa <- anova(ins)
#r2 <- 0.7036 
insa
insa[1,2]/sum(insa[,2])
#4. The bracket-calculated r2 value from the anova is calculated above (0.724439) ----
summary(as.factor(InsectSprays$spray))
#5. All groups have the same amount of data, so it is balanced ---- 

#6----- 

insa
par(mfrow=c(1,1))
f.plot<-sort(rf(100000,5,66))
d<-density(f.plot)
plot(d,col=rgb(1,0,0),main="F",xlab="X",ylab="Probability Density",xlim=c(0,6),ylim=c(0,1))
polygon(d,col=rgb(1,0,0,.5))     
abline(v=f.plot[95000],lwd=2,col=rgb(0,0,0,.5))

summary(insa)
#       Df            Sum Sq        Mean Sq          F value         Pr(>F) 
# Min.   : 5.00   Min.   :1015   Min.   : 15.38   Min.   :34.7   Min.   :0  
# 1st Qu.:20.25   1st Qu.:1429   1st Qu.:144.98   1st Qu.:34.7   1st Qu.:0  
#  Median :35.50   Median :1842   Median :274.57   Median :34.7   Median :0  
#  Mean   :35.50   Mean   :1842   Mean   :274.57   Mean   :34.7   Mean   :0  
#  3rd Qu.:50.75   3rd Qu.:2255   3rd Qu.:404.17   3rd Qu.:34.7   3rd Qu.:0  
#  Max.   :66.00   Max.   :2669   Max.   :533.77   Max.   :34.7   Max.   :0  
#                                                  NA's   :1      NA's   :1
# The F min value for significance is 34.7, which is min to produce significant p-value. 






