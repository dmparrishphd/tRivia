stripeh <- function ( ybottom , ytop , col = par ( "fg" ) , ... )
        rect (
            xleft   = par ( "usr" ) [[ 1 ]] ,
            ybottom = ybottom ,
            xright  = par ( "usr" ) [[ 2 ]] ,
            ytop    = ytop ,
            col     = col ,
            border  = NA ,
            ... )
