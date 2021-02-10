read.tsv <- function (
    file = "" ,
    nrows = -1 ,
    skip = 0 ,
    strict = TRUE ,
    blank.lines.skip = FALSE ,
    comment.char = "",
    stringsAsFactors = FALSE ,
    fileEncoding = "" ,
    encoding = "unknown" ,
    text ,
    skipNul = TRUE )
        do.call ( read.table , c (

            # SEE `help(read.table)` / `text`
            if ( file == "" && ! missing ( text ) ) {
                list ( text = text )
            } else {
                list ( file = file ) } ,

            list ( # FIXED PARAMETERS
                header = TRUE,
                sep = "\t",
                quote = "" ,
                row.names = NULL ,
                na.strings = character () ,
                colClasses = "character" ,
                check.names = FALSE ) ,

            list ( # FLEXIBLE PARAMETERS
                nrows = nrows ,
                skip = skip ,
                fill = ! strict ,
                blank.lines.skip = ! strict & blank.lines.skip ,
                comment.char = if ( ! strict ) comment.char else "" ,
                stringsAsFactors = stringsAsFactors ,
                fileEncoding = fileEncoding ,
                encoding = encoding ,
                skipNul = skipNul ) ) )
