read.csv.left <- function ( filename , ncol = 1 , ... ) {
    stopifnot ( 0 < ncol )
    List <- list ()
    Con <- file ( filename , "rt" )
    NAMES <- read.csv.record ( Con , ncol = ncol )
    repeat {
        Keys <- read.csv.record ( Con , ncol = ncol )
        if ( is.na ( Keys [ 1 ] ) ) break
        List <- list ( Keys , List ) }
    close ( Con )
    KEYS <- unlist ( List )
    M <- if ( is.null ( KEYS ) ) matrix (
        nrow = 0 , ncol = length ( NAMES ) , data = character ()
    ) else ( function () {
        M <- t ( matrix( KEYS , nrow = ncol ) )
        M [ nrow ( M ) : 1 , , drop = FALSE ] } ) ()
    `colnames<-` ( M , NAMES ) }
