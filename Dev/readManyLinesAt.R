.readManyLinesAt <- function(con, where, n, ...) {
    if (n < 1) return (character())
    seek(con, where=where)
    NAS <- rep(NA_character_, n)
    if (where != seek(con, where=NA)) return (NAS)
    c(readLines(con, n=n, ...), NAS)[1:n] }

readManyLinesAt <- function(con, info, ...) lapply(
    seq_len(nrow(info)), function(i) .readManyLinesAt(
        con, info[i, 1], info[i, 2], ...))
