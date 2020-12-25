vapply2e <- function (X, FUN)
        vapply(X, FUN, USE.NAMES=F, FUN.VALUE=FUN(X[[1]]))
