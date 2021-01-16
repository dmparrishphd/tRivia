.rcharacter <- function(nlines=1, maxLineLength=64, characters=
        vapply(32:126, intToUtf8, ""), lineLength=function(n)
        min(n, runif(n=1, min=1, max=n + 1))) {
    if (nlines < 1) return(list())
    N <- length(characters)
    LINE.LENGTHS <- vapply(1:nlines, FUN.VALUE=1,
        FUN=function(dummy) lineLength(maxLineLength))
    lapply(LINE.LENGTHS, function(n) characters[ {
        i <- runif(n=n, min=1, max=N + 1)
        i[N < i] <- N
        i } ] ) }

rcharacter <- function(...) vapply(
    .rcharacter(...), FUN.VALUE="", FUN=function(x)
        paste0(x, collapse=""))
