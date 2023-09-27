setwd("C:/Users/DELTA/Desktop/specdata")
rm(list=ls())
x <- list.files()
y <- list()
w <- list()
z <- data.frame()
#id <- 1:length(x)
#id <- 70:72
#set the id manually
pollutantmean <- function(dir , pollutant , id){
  for(i in id){
    y[[i]] = read.csv(dir[[i]])
    w[[i]] = na.omit(y[[i]])
    #s[[i]] = nrow(w[[i]])
  }
  for(j in id ){
    z <- rbind(w[[j]],z)
  }
    #Type of pollutant : sulfate nitrate
  m <- 0 
  m <- mean(z[[pollutant]],na.rm = T)
  return(m)
}