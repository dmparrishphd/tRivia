heaviside2 <- function(x, zero=NA) c(0L, zero, 1L)[2 + sign(x)]
