appendDiffs <- function (
    X ,
    i = c ( "y" , "x" ) ,
    .names = c ( "diff" , "absDiff" , "sqrDiff" ) ,
    FUNS = list (
        diff = `-` ,
        absDiff = `-` %O% abs ,
        sqrDiff = `-` %O% ( function ( x ) x * x ) ) ) {
    for ( name in .names ) X <- appendVariadic (
            X , i , FUNS [[ name ]] , name )
    X }
