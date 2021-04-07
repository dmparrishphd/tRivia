top.df <- function ( X , n = 1 , na.last = TRUE , decreasing = TRUE ,
        method = eval ( formals ( order ) $ method ) ,
        warn = "The observations ranked n and n + 1 are identical" ) {
    if ( n < 1 ) return ( integer () )
    ORDER <- rankorder.df ( X , na.last = na.last , decreasing = decreasing )
    Top <- ORDER [ seq_len ( n + 1 ) ]
    while ( length ( warn ) ) {
        ilast <- rev ( Top ) [ 1 : 2 ]
        i1 <- ilast [[ 1 ]]
        i2 <- ilast [[ 2 ]]
        if ( is.na ( i1 ) ) break # THERE IS NO (n + 1)-TH ROW
        SAME <- identical ( X [ i1 , ] , X [ i2 , ] )
        if ( SAME ) warning ( paste0 ( warn , " (i = " , i1 , ")." ) )
        break }
    Top [ 1 : n ] }
