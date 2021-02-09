#0.
install.packages("vegan")
library(vegan)
data('dune')
#1. -----
head(dune)
co.va <- cov(dune$Achimill,dune$Anthodor)
co.va
#Covariation in abundance between Achimil and Anthodor species is 1.326316 
#2. -----
dune[5,]
m.a.s5 <- max(dune[5,])
m.a.s5
#The maximum abundance for any species at site 5 is 6.
#3. -----
Bracuta <-dune$Bracruta
Bracuta
Bracuta.sd <- sd(Bracuta)
Bracuta.sd
#The standard deviation for Bracuta abundance from all sites is 1.90498 
#4. -----
ncol(dune)
#dune has 30 columns 
nrow(dune)
#nrow = 20 
siterichness <- function(x){apply(x[,]>0,1,sum)}
siterichness(dune)
#above is my function using apply to calculate species richness 
#5a -----
cv <- function(x,y){apply(x,y,sd)/apply(x,y,mean)}
#function for covariance is above so that X specifies the dataset and partition to use, 
#y specifies whether the values are processed along columns (2) or rows (1) to calculate mean and standard deviation.  
#5b -----
dunecv <-cv(x=dune,y=2)
dunecv
#cv of abundance accross all sites for the Trifrepe species is: 0.8082749
#6 ----
library(ggplot2)


