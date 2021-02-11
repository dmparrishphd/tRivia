#STATUS: IN PROGRESS
#TODO: FORMAT LIKE UNIX cal PROGRAM
#REF https://www.tutorialspoint.com/unix_commands/cal.htm

.cal <- function ( from , to ) {

	Days <- seq ( as.Date ( from ) - 7 , as.Date ( to ) + 7 , by = "day" )
	WEEKDAYS <- weekdays ( Days )
	FIRST.SUNDAY <- match ( "Sunday" , WEEKDAYS )
	LAST.SATURDAY <- rev ( which ( WEEKDAYS == "Saturday" ) ) [[ 1 ]]
	Days <- Days [ FIRST.SUNDAY : LAST.SATURDAY ]

	DF <- data.frame ( stringsAsFactors = FALSE ,
		DATE = Days ,
		DAY.OF.MONTH = as.integer ( substr ( Days , 9 , 10 ) ) ,
		WEEKDAY = weekdays ( Days ) )

	data.frame ( DF , DAY.OF.WEEK = substr ( DF $ WEEKDAY , 1 , 1 ) )

}

monthDates <- function ( month , year ) {

	YMD <- strsplit(as.character(Sys.Date()), "-")[[1]]
	if ( missing ( month ) ) month <- YMD [[ 2 ]]
	if ( missing (  year ) ) year <- YMD [[ 1 ]]
	MO <- seq (
		from = as.Date ( paste0 ( year , "-" , month , "-01" ) ) ,
		length.out = 2  ,
		by = "month" )
	DA <- rev ( rev ( seq ( from = MO [[ 1 ]] , to = MO [[ 2 ]] , by = "day" ) ) [ -1 ] )
	DA [ c ( 1 , length ( DA ) ) ] }

cal <- function ( ... ) {
	INFO <- do.call ( .cal , as.list ( monthDates (...) ) )
	paste0 ( paste (
		vapply (
			FUN.VALUE = "" ,
			FUN = function ( x ) paste ( formatC ( x , format = "f" , digits = 0, width = 2) , collapse = " " ),
			X = as.data.frame ( matrix ( INFO $ DAY.OF.MONTH , nrow = 7  ) ) ) ,
		collapse = "\n" ) , "\n" )
}

cat(cal())



