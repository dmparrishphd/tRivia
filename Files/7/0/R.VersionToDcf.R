R.VersionToDcf <- function ( file ) {
    RVERSION <- data.frame (
        R.Version () ,
        stringsAsFactors = FALSE )
    write.dcf (
        x = RVERSION,
        file = file ,
        indent = 16 ,
        width  = 80 ) }
