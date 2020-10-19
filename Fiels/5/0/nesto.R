# nest(oR): "Nestor" A MUTABLE LIST
#
# USAGE EXAMPLE
#
#   source("~/path/nesto.R")
#   # WHERE ~/path IS THE PATH TO THIS FILE.
#   MyNest <- nest()
#   MyNest$help()
#   MyNest$help("EXAMPLES")

.NEST.ENV <- new.env()

.NEST.ENV$length <- function(X) X[[1]]

.NEST.ENV$head <- function(X) if(X[[1]]) X[[2]][[1]] else NULL

.NEST.ENV$as.list = `environment<-`(function(X) {
    LENGTH <- length(X)
    Return <- rep(list(NULL), LENGTH)
    k <- LENGTH
    if (k) {
        Y <- X[[2]]
        for (. in rev(seq(k))) {
            Return[[.]] <- Y[[1]]
            Y <- Y[[2]] } }
    Return }, .NEST.ENV)

.NEST.ENV$.DOC <- list(
    Nest = "
        A `nest` object is intended as a container of semi-
        persistent items. The `append` and `pop` methods are
        meant to have O(1) time complexity, whereas the `[[`
        method probably has O(n - k) time complexity and the
        `print` and `as.list` methods have O(n). (These
        estimates have NOT been confirmed.) The primary
        function, `nest`, returns a new `nest` object, which is
        a `list` of functions whose `environment`s are all set
        to the same `environment`.  Each `nest` has its own
        unique `environment` that holds the `nest`s items (an
        element called `.Data`), the `.Length` of the `nest`, as
        well as the present documentation.",
    length = "
        length (Similar to base::length) returns the length of
        the object, a non-negative integer vector of length 1.",
    `[[` =  "
       `[[` (extract; Similar to base::`[[`) returns the single
        element specified by the integer index of length 1. ****
        THE FIRST ITEM **** appended has an index of 1, the
        second an index of 2, and so on.",
    `[` =  "
       `[` (extract; Similar to base::`[`) returns a simple
        list of elements specified by the integer index.",
    append = "
        append **** MUTATES **** the object by appending the
        argument to the head of the object.",
    as.list = "
        as.list returns the items of the object as a simple
        (unnested) list.",
    `(print)` = "
        It may not be a good idea to print `nest` objects.
        Suggestion: print the return from `as.list` or `[`."
)

.PROTO <- list(

    help = function(topic="") {

        show <- function(character.)
                cat(paste(
                    Filter(
                        nchar,
                        trimws(strsplit(character., "\n")[[1]] ) ),
                    collapse=" "), "\n")

        if (topic == "EXAMPLES") {
            cat(.EXAMPLES)
        } else if (topic %in% names(.DOC)) {
            show(.DOC[[topic]])
        } else {
            cat("Usage: <object name>$help(\"<topic>\")\nwhere <topic> is one of\n", names(.DOC), "EXAMPLES\n")
            for (help. in .DOC) {
                cat("\n")
                show(help.) } } },

    length = function() length(.Data),

    head = function() head(.Data),

    append = function(X) {
         # INCREMENT, COPY, AND OVERWRITE LENGTH
        .Data[[1]] <<- length(.Data) + 1L
        .Data <<- list(length(.Data), .Data)
        .Data[[2]][[1]] <<- X },

    tail = function() {
        Tail <- nest()
        if (.Data[[1]]) {
            environment(Tail[[1]])$.Data[[2]] <- .Data[[2]][[2]]
            environment(Tail[[1]])$.Data[[1]] <- length(.Data) - 1L }
        Tail },

    `[[` = function(k) {
        LENGTH <- length(.Data)
        if ( !(is.numeric(k)) | LENGTH < k | k < 1) return ()
        Y <- .Data[[2]]
        if (k < LENGTH) for (. in seq(LENGTH - k)) Y <- Y[[2]]
        Y[[1]] },

    as.list = function() as.list(.Data),

    `[` = function(i) as.list(.Data)[i]
)

.NEST.ENV$nest <- function() {
    Env <- new.env(parent=.NEST.ENV)
    Env$.Data <- list(0L, list()) # INITIAL LENGTH == 0L
    lapply(.PROTO, function(fn) `environment<-`(fn, Env)) }

nest <- .NEST.ENV$nest

.NEST.ENV$.EXAMPLES <-
'
# EXAMPLE SNIPPETS FOR `nest`

nn <- nest() # ASSUMES nest IS FOUND IN GLOBAL ENVIRONMENT
# EXPLORE THIS EMPTY NEST
nn$length()
nn$head()
nn$tail()$head()

nn$append("ONE")
nn$head()
nn$`[[`(1)
nn$`[`(1)
nn$as.list()
nn$tail()$tail()$head()

nn$append("TWO")
nn$head()
nn$as.list()
nn$`[`(2)
nn$`[[`(2)
nn$tail()$head()
nn$tail()$tail()$head()

nn$append("THREE")
nn$head()
nn$`[[`(1)
nn$`[[`(2)
nn$`[[`(3)
nn$`[`(c(1, 3))
nn$as.list()
nn$tail()$head()
nn$tail()$tail()$head()

nn$as.list()

nn$tail()$as.list()

nn <- nest()
for (k in 1:99999) nn$append(k)
nn$`[`(c(1, 45, 999, 42))

# IF YOU REALLY NEED TO, YOU CAN EXAMINE THE UNDERLYING DATA
# YOU CAN ALSO MANIPULATE IT, BUT IF YOU DO, IT MAY MEAN THAT
# `nest` IS NOT A SUITABLE OBJECT FOR YOUR APPLICATION.
environment(nn[[1]])$.Data
# nn is a list of functions. each function has the same parent environment, where .Data is found
'
