stripev <- function ( xleft , xright , col = par ( "fg" ) , ... )
        rect (
            xleft   = xleft ,
            ybottom = par ( "usr" ) [[ 3 ]] ,
            xright  = xright ,
            ytop    = par ( "usr" ) [[ 4 ]] ,
            col     = col ,
            border  = NA ,
            ... )
