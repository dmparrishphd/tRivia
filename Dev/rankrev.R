
rankrev <- ( function () {

    Env <- new.env ( parent = baseenv() )
    attr ( Env , "name" ) <- "rankrevEnv"

    Env $ .METHODS <- data.frame ( stringsAsFactors = FALSE ,
        key = c ( "average" , "first" ,  "last" , "random" , "max" , "min" ) ,
        value = c ( "average" ,  "last" , "first" , "random" , "min" , "max" ) )

    rankrev <- function ( x , na.last = TRUE , ties.method = c (
        "average" , "first" ,  "last" , "random" , "max" , "min" ) ) {
        LOOK <- parent.env(environment()) $ .METHODS
        ties <- LOOK $ value [[ match ( ties.method , LOOK $ key ) ]]
        i <- rank ( x , na.last = na.last , ties.method = ties )
        1L + max ( i ) - i }

    environment ( rankrev ) <- Env

    rankrev } ) ()
