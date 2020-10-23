match1 <- function(x, table, incomparables=NULL) {
    stopifnot(length(x) == 1, length(table) == 1)
    as.logical(match(x, table, nomatch=0L,
        incomparables=incomparables)) }
          
