scanRest <- function(file, sep="\n", na.strings=character(),
    quiet=T, blank.lines.skip=F, skipNul=T, ...)
        scan(file, what="", sep=sep, na.strings=na.strings,
            quiet=quiet, blank.lines.skip=blank.lines.skip,
            skipNul=skipNul, ...)
