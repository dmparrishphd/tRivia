.scanLinesVerbatim.Args.fixed <- list(what="", sep="\n",
        na.strings=character(), blank.lines.skip=F)

scanLinesVerbatim <- function(file="", n=-1, skip=0, quiet=TRUE,
        fileEncoding="", encoding="unknown", text=character(),
        skipNul=TRUE) {
    AdditionalArgs <- list(file=file, n=n, skip=skip, quiet=quiet,
        fileEncoding=fileEncoding, encoding=encoding,
        skipNul=skipNul)
    Option <- if (missing(file) && is.character(text) && length(text) == 1)
        list(text=text) else list()
    if (length(Option)) AdditionalArgs$file <- NULL
    Args <- concatenate.lists(
        .scanLinesVerbatim.Args.fixed, AdditionalArgs, Option)
    do.call(scan, Args) }
