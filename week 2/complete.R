rm(list=ls())
setwd("C:/Users/DELTA/Desktop/specdata")
x <- list.files()
y <- list()
#id <- 1:length(x)
#id <- 70:72
complete <- function(dir,id){
  z <- list()
  w <- c()
  for(j in id){
      y[[j]] <- read.csv(dir[[j]])
    z[[j]] <- na.omit(y[[j]])
    w[j] <- nrow(z[[j]])
  }
  
  t <- cbind(id,nobs = na.omit(w))
  out <- as.data.frame(t)
  out
}
