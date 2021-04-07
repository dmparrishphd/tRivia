rankorder.df <- function ( X , na.last = TRUE , decreasing = FALSE ,
        method = eval ( formals ( order ) $ method ) )
    do.call ( rankorder , c (
        X = X ,
        na.last = list ( na.last ) ,
        decreasing = list ( decreasing ) ,
        method = list ( match.arg ( method ) ) ) )
        
