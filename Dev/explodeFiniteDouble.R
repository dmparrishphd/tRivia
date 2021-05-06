# return sign, "digits", and exponent of a `double` singleton
explodeFiniteDouble <- function ( x ) {
	stopifnot (
		is.double ( x ) ,
		length ( x ) == 1 ,
		is.finite ( x ) )
	if ( x == 0 ) return ( c ( 0 , 0 , 0 ) )
	s <- sign ( x )
	x <- abs ( x )
	f <- if ( x < 1 ) 2 else 1/2
	e <- 0
	while ( ! ( 1 <= x && x < 2 ) ) {
		x [[ 1 ]] <- x * f
		e [[ 1 ]] <- e + s }
	c ( -s , x , e ) }
