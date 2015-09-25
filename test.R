pmltraining <- read.csv("./data/pml-training.csv",na.strings = c("","#DIV/0!","NA"))
obsCount <- nrow(pmltraining)
tnames <- names(pmltraining)
results <- c()
index <- 1
for(i in 1:ncol(pmltraining)){
  numberOfNAs <-sum(is.na(pmltraining[,i]))
  
  if(numberOfNAs > (.5 * obsCount)) {
    results[index] <- (tnames[i])
    index <- index + 1
  }
}


pmltraining <- (pmltraining[,setdiff(tnames,results)])
