read.csv.header <- function ( file , ... ) {
    LF <- "\n"
    LINE <- scan ( file , what = "" , sep = LF , nlines = 1 ,
        na.strings = "" , quiet = TRUE,
        blank.lines.skip = FALSE, skipNul = TRUE , ... )
    TEXT <- paste0 ( LINE , LF , LINE , LF )
    CSV <- read.csv ( nrows = 1 , colClasses = "character" ,
        stringsAsFactors = FALSE , text = TEXT )
    ROW <- CSV [ 1 , , drop = TRUE ]
    names ( ROW ) <- NULL
    unlist ( ROW ) }
