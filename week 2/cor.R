setwd("C:/Users/DELTA/Desktop/specdata")
rm(list=ls())
x <- list.files()  
y <- list()
  z <- list()
  e <- data.frame()
  q <- data.frame()
  nitrate <- data.frame()
  sulfate <- data.frame()

corr <- function(dir = x ,threshold){
  p <- c()
  for(i in 1:3){
    y[[i]] <- read.csv(dir[[i]])
    z[[i]] <- as.data.frame(na.omit(as.matrix(y[[i]])))
    e <- z[[i]]
    q <- e[e[["nitrate"]] > threshold & e[["sulfate"]] > threshold, ]
    nitrate <- as.numeric(q[["nitrate"]])
    sulfate <- as.numeric(q[["sulfate"]])
    w <- cor(sulfate,nitrate)
    p = append(p,w)
  }
  return(p)
}