rankrev <- ( function () {

    Env <- new.env ( parent = baseenv() )
    attr ( Env , "name" ) <- "rankrevEnv"

     Env $ .TIES.METHOD <- c ( 
         average = "average" ,
         first   = "last"    ,
         last    = "first"   ,
         random  = "random"  ,
         max     = "min"     ,
         min     = "max"     )

    Fun <- function ( x , na.last = TRUE , ties.method = c (
            "average" , "first" ,  "last" , "random" , "max" , "min" ) ) {
        i <- rank (
            x = x ,
            na.last = na.last ,
            ties.method = .TIES.METHOD [[ match.arg ( ties.method ) ]] )
        1L + max ( i ) - i }

    environment ( Fun ) <- Env

    Fun } ) ()
