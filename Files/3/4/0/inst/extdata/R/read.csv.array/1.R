read.csv.array <- function (
        X ,
        n = 1 ,
        sep = "" ,
        norownames = character () ,
        nonames = character () ,
        row.names = NULL ,
        .names = NULL ,
   	    nocell = list ( character () , character () ) ,
        readRownames = function ( file ) read.csv.rownames.left (
            file , ncol = n , sep = sep ) ,
        readHeaderNoRownames = function ( file ) read.csv.header (
            file ) [ -n:-1 ] ,
        readTable = function ( file ) `rownames<-` (
            read.csv.as.is ( file ) , readRownames ( file ) )
    ) {

    stopifnot ( 0 < n )

    ROWNAMES <- ( function () {
        rn <- Reduce ( intersect , lapply ( X , readRownames ) )
        rn <- setdiff ( rn , norownames )
        intersect ( rn , if ( is.null ( row.names ) ) rn else row.names ) } ) ()

    NAMES <- ( function () {
        m <- Reduce ( intersect , lapply ( X , readHeaderNoRownames ) )
        m <- setdiff ( m , nonames )
        intersect ( m , if ( is.null ( .names ) ) m else .names ) } ) ()

    Tables <- ( function ( ) {

        Tbl <- lapply ( X , function ( file ) {
            extract.crosstab ( readTable ( file ) , ROWNAMES , NAMES )
            } )

        A1 <- alignIntersect ( lapply ( Tbl , rownames ) )
        A2 <- alignIntersect ( lapply ( Tbl ,    names ) )

        Tbl <- lapply ( seq_along ( Tbl ) , function ( i )
            Tbl [[ i ]] [ A1 [[ i ]] , A2 [[ i ]] , drop = FALSE ] )

        for ( i in seq_along ( Tbl ) [ -1 ] ) stopifnot (
            identical (
                rownames ( Tbl [[ i ]] ) ,
                rownames ( Tbl [[ 1 ]] ) ) ,
            identical (
                names    ( Tbl [[ i ]] ) ,
                names    ( Tbl [[ 1 ]] ) ) )

        Tbl } ) ()

    #REMINDER: ALL Tables ARE ALIGNED BY names AND rownames
    PROTOTYPE <- Tables [[ 1 ]]
    i <- match ( nocell [[ 1 ]] , rownames ( PROTOTYPE ) )
    j <- match ( nocell [[ 2 ]] ,    names ( PROTOTYPE ) )
    # MODIFYING i AND j TO AVOID ILLEGAL SUBASSIGNMENT
    ok <- is.finite ( i ) & is.finite ( j )
    i <- i [ ok ]
    j <- j [ ok ]

    for ( n in seq_along ( Tables ) )
    for ( k in seq_along (      i ) )
            Tables [[ n ]] [ i [ k ] , j [ k ] ] <- ""

    Tables }
