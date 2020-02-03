# Analysis of qPCR data

#=============================================
# Load packages and data
#=============================================

library(ggplot2)
library(stringr)

data <- read.delim(file.choose(), stringsAsFactors = F)

plate.key <- read.table(file.choose(), header = T, stringsAsFactors = F)


#=============================================
# Understand & Refine data
#=============================================
Probe.fail <- as.factor(is.na(data$Cp))

data.combined <- cbind(data[,3:6], plate.key$Probe, Probe.fail)

data.combined$Pos <- as.factor(data.combined$Pos)
data.combined$Name <- as.factor(data.combined$Name)



#Indicate gene towhich all will be normalized
#Do concentration calcuations w/ normalizing gene
#Stastically analyse the data
#plot the data
