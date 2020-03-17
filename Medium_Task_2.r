#importing the library for the effective sample size.
library(mcmcse)

## list description for AR(1) model with small coef
AR.sm <- list(order = c(1,0,0), ar = 0.9, sd = 2)

## simulate AR(1)
AR1.sm <- arima.sim(n = 1e3, model = AR.sm)

# calculating effective sample size.
ess(AR1.sm)