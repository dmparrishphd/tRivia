idivisions <- function(from=1, to, by=2L) {
    s <- seq.int(from, to, by)
    cbind(s, c(s[-1] - 1L, to), deparse.level=0) }
