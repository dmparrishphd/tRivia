character.array <- function(string, sep=c(" ", "\n"), fixed=TRUE, ...) {
    Dim <- rep(1L, 1L + length(seps))
    Character <- string
    for ( k in seq_along(sep) ) {
        Character <- unlist( strsplit(Character, rev(sep)[k], fixed=fixed, ...) )
        Dim[1L + k] <- length(Character) / prod(Dim[1:k]) }
    `dim<-`(Character, rev( Dim[-1] ) ) }
