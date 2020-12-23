mgrepl <- function(patterns, x, ...) {
    LX <- length(x)
    LP <- length(patterns)
    FUN <- function(pattern) grepl(pattern, x, ...)
    FUN.VALUE <- vector(length=LX)
    Y <- vapply(patterns, FUN, FUN.VALUE, USE.NAMES=F)
    DIM <- c(LX, LP)
    t(`dim<-`(Y, DIM)) }
    
