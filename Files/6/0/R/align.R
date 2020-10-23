align <- function(..., Match=match, Unique=unique) {
    X <- list(...)
    VALUES <- Unique(do.call(c, X))
    FUN.VALUE <- matrix(as.list(VALUES))
    FUN <- function(table)
            matrix(lapply(VALUES, function(x) Match(x, table)))
    INDICES <- lapply(X, FUN)
    names(INDICES) <- paste0("I", seq_along(X))
    data.frame(INDICES, VALUE=matrix(VALUES), check.names=F,
        stringsAsFactors=F) }
