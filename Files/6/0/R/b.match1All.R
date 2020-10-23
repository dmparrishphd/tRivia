b.match1All <- function(x, table, FUN) {
    stopifnot(length(x) == 1, FUN(T, T), !FUN(T, !T))
    vapply(table, FUN.VALUE=T, USE.NAMES=F, FUN=
        function(y) FUN(x, y)) }
