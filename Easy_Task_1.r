#importing the library 
library(mcmcse)

#implementing standard normal distribution
foo<-rnorm(1e4)

#calculating effective sample size.
ess(foo)

#part 2
#matrix
mymatrix<-matrix(rnorm(100), ncol = 10)

#calculating the eigen value only of the matrix's vectors
eigen(mymatrix,only.values = TRUE)