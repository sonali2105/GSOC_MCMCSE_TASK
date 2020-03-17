library(mcmcse)
#Initial settings

counter <- 5
n <- 1e3
a <- floor(sqrt(n))
b <- a
M1 <- matrix(nrow = m, ncol = n)
M2 <- matrix(nrow = m, ncol = a)
ar=0.9
sd =2

#Function for generating AR(1) output

AR.sm <- list(order = c(1,0,0), ar, sd )
AR1 <- arima.sim(n, model = AR.sm)

#Returns batches(Y) by making batches of X
get_batch <- function(M1, n, a, b) {
  batch <- numeric(length = a)  
  
  for(i in a:1) {
    batch[i]=mean(M1[ (b*(i-1)+1) : (b*i)])
  }
  
  return(Z)
}

#Function for replicated batch means estimator
RBM <- function(M2, counter, n, a, b)  {
  overall_mean <- mean(M2)
  batch <- sum( (M2 - overall_mean)^2 )*(b/( (counter*a) - 1) )
  return(batch)
}



#Sampling m replications from AR(1)
for( i in 1:counter)  {
  M1[i,] <- AR1
  M2[i,] <- get_batch(M1[i,], n, a, b)
}

#Estimation of RBM
RBM(M2, counter, n, a, b)