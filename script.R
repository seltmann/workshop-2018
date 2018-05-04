setwd("~/Desktop/workshop")
dat <- read.csv("data/inflammation-01.csv")

dat[,16:19]

#specific rows
dat[c(1,5,6),]

#specfific columns
dat[,c(1,5,6)]

#gives mean of every row
apply(dat, 1, mean) 

#gives average for every day
appDat <- apply(dat, 2, mean) 

plot(appDat)

animal <- c('m', 'o', 'n', 'k', 'e', 'y')
animal[c(2,3,4)]

sd_plot <- (apply(dat, 2, sd))
plot(sd_plot)
