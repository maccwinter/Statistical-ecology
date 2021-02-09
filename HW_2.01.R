#0.
install.packages("vegan")
library(vegan)
data('dune')
#1. 
head(dune)
co.va <- cov(dune$Achimill,dune$Anthodor)
co.va
#Covariation in abundance between Achimil and Anthodor species is 1.326316 ------ 
#2. 
dune[5,]
m.a.s5 <- max(dune[5,])
m.a.s5
#The maximum abundance for any species at site 5 is 6.-----
#3. 
Bracuta <-dune$Bracruta
Bracuta
Bracuta.sd <- sd(Bracuta)
Bracuta.sd
#The standard deviation for Bracuta abundance from all sites is 1.90498 ------






