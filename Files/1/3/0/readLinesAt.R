readLinesAt <- function(con, where=0, ...) {
    if (!length(where)) return (character())
    whence <- seek(con, where=NA)
        Return <- character(length(where))
        for (i in seq_along(where)) {
            pos <- {
                seek(con, where=where[i])
                seek(con, where=NA) }
            Return[i] <-
                if (pos != where[i]) {
                    NA_character_
                } else if (length(Line <- readLines(con, n=1, ...))) {
                    Line
                } else { NA_character_ } }
    seek(con, where=whence)
    Return }
    
