unvectorize <- function ( .df , ... , USE.ROW.NAMES = FALSE ) {
	DF <- data.frame ( NA ) [ , -1 ] # ONE ROW, NO COLUMNS
	n <- nrow ( .df )
	for ( i in seq_len ( n ) ) DF <- data.frame ( Y , .df [ i , ] , ... )
	SUFFIX <- if ( USE.ROW.NAMES ) rownames ( .df ) else seq_len ( n )
	names ( DF ) <- paste ( names ( .df ) , rep ( SUFFIX , each = n ) , sep = "" )
	DF }
