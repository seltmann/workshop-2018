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

alt(-) to make the <-

  #functions
fahrenheit_to_celsius <- function(temp_K){
  temp_C <- temp_K - 273.15
  return(temp_C)
}

fahrenheit_to_celsius(0)


sentence <- c("write","programs","for","computers","not","people")
asterisk <- "****"
fence <- function(sentence,wrapper){
  answer <- c(wrapper, sentence, wrapper)
  return(answer)
}

center <- function(data, desired) {
  new_data <- (data - mean(data)) + desired
  return(new_data)
}

centered <- center(dat[,4],0)

fence(sentence, asterisk)
all.equal(sd(dat[,4]),sd(centered),)

x <- c(2,3,8,4)

rescale <- function(v) {
  # Rescales a vector, v, to lie in the range 0 to 1.
  L <- min(v)
  H <- max(v)
  result <- (v - L) / (H - L)
  return(result)
}

rescale(x)


print_words <- function(sentence){
  for(word in sentence){
    print(word)
  }
}

print_words(best_practice)

len <- 0
vowels <- c('a','e','i','o','u')

for (v in vowels){
  print(v)
  len <- len + 1
}

len

##conditionals
num <- 25
if (num>100){
  print('greater')
}else{
  print('not greater')
}
plot_dist(dat[,10],use_boxplot=TRUE, threshold)
head(dat)

plot_dist(dat=dat[,10])
plot_dist <- function(dat, use_boxplot=TRUE,threshold=10){
  if (length(dat) < threshold){
    stripchart(dat)
  }else if (use_boxplot){
    boxplot(dat)
  }else{
    hist(dat)
  }
}

##ggplot

control-1  fixes your curley brackets




