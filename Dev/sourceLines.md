Sketch of sourceLines, part of package

DEPENDS: 1/3/0/csource.R 1/3/0/readLinesAt.R

sourceLines <- function(file, lineNos, lineIndex=NULL, .readLines=list(), .source=list(), strict=F)
    if (is.null(lineIndex)) {
        #...BUILD INDEX OF LINES...
    }
    where <- lineIndex[lineNos]
    if (any(is.na(where))) {
        (if (strict) stop else warning)("Not all lineNos found in lineIndex.")
        return ()
    }
    Lines <- do.call(readLinesAt, c(file, lineNos, .readLines))
    Env <- parent.frame()
    eval(do.call(csource, c(Lines, .source)), envir=Env) # SPECIFY ENVIRONMENT
}
