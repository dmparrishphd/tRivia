idivisions <- function(from=1, to, by=2L) {
    s <- seq(from=from, to=to, by=by)
    cbind(s, c(s[-1] - 1L, to), deparse.level=0) }
    
