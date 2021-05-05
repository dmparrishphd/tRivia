trendline <- function ( x , y )
        c ( `names<-` ( coef ( lm ( y ~ x ) ) , NULL ) , -1 )
