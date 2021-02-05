function ( path = "" , parent.name = "package:stats" ,
          name = "csvcsvEnv" , quiet = TRUE ) {
    Envir <- new.env ( parent = as.environment ( parent.name ) )
    DIR <- paste0 ( path , "/R" )
    if ( ! quiet ) cat ( DIR , sep = "\n" )
    FILENAMES <- list.files ( DIR , pattern = "^[^_].*[.]R$" ,
        recursive = FALSE )
    if ( ! quiet ) cat ( FILENAMES , sep = "\n" )
    for ( Filename in FILENAMES ) source (
        local = Envir , paste0 ( DIR , "/", Filename ) )
    attach ( name = name , what = Envir )
    invisible () }
