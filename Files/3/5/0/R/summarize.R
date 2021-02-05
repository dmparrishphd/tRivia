summarize <- function ( X , i = c ( "x" , "y" ) , FUN ,
        name , row.name , ... ) {
    Y <- data_frame ( FUN ( extract.named ( X , i ) , ... ) )
    names ( Y ) <- name
    row.names ( Y ) <- row.name
    Y }
