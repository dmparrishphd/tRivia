compoundStrToStr <- function ( string , quote = "\x7f" ) {
    stopifnot (
        is.character ( string ) ,
        length ( string ) == 1 ,
        ! is.na ( string ) ,
        is.character ( quote ) ,
        length ( quote ) == 1 ,
        nchar ( quote ) == 1 ,
        ! grepl ( quote , string , fixed = TRUE ) )
    STRING <- gsub (
        string ,
        pattern = '\\"' ,
        replacement = quote ,
        fixed = TRUE )
    SCANNED <- scan (
        na.strings = character () ,
        quiet = TRUE ,
        quote = '"' ,
        text = string ,
        what = "" )
    gsub (
        paste0 ( SCANNED , collapse = "" ) ,
        pattern = quote ,
        replacement = '"' ,
        fixed = TRUE ) }
