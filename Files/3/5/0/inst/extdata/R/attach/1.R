function ( path , collate = "1" , parent.name = "package:stats" ,
          name = "csvcsvEnv" , quiet = TRUE ) {
    quiet = as.logical ( quiet )
    Envir <- new.env ( parent = as.environment ( parent.name ) )
    FILENAMES <- paste0 ( path , "/" , unlist ( read.csv (
        stringsAsFactors = FALSE , paste0 (
            path , "/inst/extdata/collate/" , collate , ".csv" ) ) ) )
    if ( ! quiet ) cat ( FILENAMES , sep = "\n" )
    for ( Filename in FILENAMES ) source (
        local = Envir , Filename )
    attach ( name = name , what = Envir )
    invisible () }
