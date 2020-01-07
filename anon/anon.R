anon <- function (X) {
    FUN <- list(
        `dimnames`  = `dimnames<-`,
        `names`     = `names<-`,
        `row.names` = `rownames<-`)
    for (Name in do.call(intersect, lapply(list(FUN, attributes(X)), names)))
            X <- FUN[[Name]](X, NULL)
    X }
