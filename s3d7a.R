`%%.s3d7a` <- function(., RHS=NULL) .$.receive(., RHS)

s3d7a <- function(kind=NULL) {
        
        instance <- if (!is.null(kind)) {
            list(.receive=function(., RHS) {} )
        } else { list(
            .DOC=(
'**** The s3d7a class ****

An s3d7a class is an S3 class.

A proper instance of a s3D7a class ("proper instance") is a list
with only one attribute ("class").

Exactly one generic function is defined for a proper instance:

`%%`

This function was chosen for it\'s visual appearance not unlike
the special binary operators.  as well as for its having few
characters.

For proper instances, `%%` takes two arguments: the instance---
the LHS---and any other argument (including NULL)---the RHS.

function(., RHS=NULL) .$.receive(., RHS)

A proper instance has a list element named `.receive`. This is a
function of two arguments: the LHS and the RHS of `%%`.
Internally, LHS is aliased `.`.

The intent is that .receive will dispatch the arguments of `%%`
to other functions, which may be internal to the instance.

Two prototypes are provided: one is obtained by calling s3d7a
with no arguments (or NULL) and the other is obtained by calling
s4d7a with any non-NULL argument.  One prototype is minimalist,
while the other has a .receive function that attempts to
evaluate in an elaborate manner the RHS in terms of the basic
types. Parts of the elaborate .receive function serves to
demonstrate a debugging technique: the "cat calls" contain
labels that identify what part of the function is being
evaluated.

Both prototypes are proper instances. There is the potential for
many other proper instances (how many proper fractions are
there?).'),
            .receive=function(., RHS, quiet=F, default=NULL) {

                if (!quiet) cat("s3d7a: .receive.\n")

                if ( missing(RHS)    ) {
                    if (!quiet) cat(
                        "s3d7a: .receive: missing RHS.\n")
                    cat(.$.DOC)
                    reutrn () }

                if (!quiet) {
                    cat("s3d7a: .receive: (RHS is not missing).\n")
                    KIND <- matrix(c(
                        typeof(RHS),
                        mode(RHS),
                        storage.mode(RHS),
                        class(RHS)))
                    rownames(KIND) <- c(
                        "TYPEOF", "MODE", "STORAGE.MODE", "CLASS")
                    colnames(KIND) <- "KIND"
                    cat("s3d7a: .receive: kind(RHS):---\n")
                    print(KIND)
                    cat("---(END s3d7a: .receive: kind(RHS)).\n") }

                if (is.null(RHS)) {
                    if (!quiet) cat("s3d7a: RHS is NULL.\n")
                    cat(.$.DOC)
                    return (default) }

                if (!is.list(RHS)    ) {

                    if (!quiet) cat("s3d7a: RHS is not a list.\n")

                    if (is.array(RHS)) {

                        if (!quiet) cat("s3d7a: RHS is an array.\n")

                        if (is.matrix(RHS)) {
                            if (!quiet) cat("s3d7a: RHS is a matrix.\n")
                            return (default) }
    
                        if (!quiet) cat("s3d7a: RHS is not a matrix.\n")
                        return (default) }

                    if (!quiet) cat("s3d7a: RHS is not an array.\n")

                    if (is.vector(RHS)) {
                        if (!quiet) cat("s3d7a: RHS is a vector.\n")
                        return (default)
                    }

                    if (!quiet) cat("s3d7a: RHS is not a vector.\n")
                    return (default)

                } else {

                    if (!quiet) cat("s3d7a: RHS is a list.\n")

                    if (is.data.frame(RHS)) {
                        if (!quiet) cat("s3d7a: RHS is a data.frame.\n")
                        return (default) }

                    if (!quiet) cat("s3d7a: RHS is not a data.frame.\n")

                    if (length(RHS) < 1) {
                        cat("s3d7a: RHS (a list) is empty.\n")
                        return (default) }

                    # LOOKING FOR A NAME (CHARACTER STRING)
                    FIRST <- RHS[[1]]
                    if (
                        is.null(FIRST) |
                        ! is.character(FIRST)) {
                            if (!quiet) cat(
                                "s3d7a: RHS[[1]] is not a character vector.\n")
                            return (default) }
            
                    if (!quiet) cat("s3d7a: RHS[[1]] is a character vector.\n")

                    if (length(FIRST) < 1) {
                        if (!quiet) cat("s3d7a: RHS[[1]] is empty.\n")
                        return (default) }

                    if (!quiet) cat("s3d7a: RHS[[1]] is not empty.\n")

                    if (1 < length(FIRST)) {
                        if (!quiet) cat(
                            "s3d7a: RHS[[1]] has multiple elements.\n")
                        warning(paste0(
                            "s3d7a: RHS[[1]] has multiple elements;",
                            "Only the first element only will be used."))
                    }

                    NAME <- FIRST[1] 

                    if (!quiet) {
                        cat("s4d7a: receive: NAME:---\n")
                        print(NAME)
                        cat("---(END s4d7a: receive: NAME)\n")
                        cat("s3d7: .receive: looking for a",
                            "function matching NAME...\n") }

                    FUN <- .[[ NAME ]]

                    KIND <- matrix(c(
                        typeof(FUN),
                        mode(FUN), 
                        storage.mode(FUN),
                        class(FUN)))
                    rownames(KIND) <- c(
                        "TYPEOF", "MODE", "STORAGE.MODE", "CLASS")
                    colnames(KIND) <- "KIND"
                    cat("s3d7a: .receive: kind(self[[(arg 2)[[1]][1]]]):---\n")
                    print(KIND)
                    cat("---(END s3d7a: .receive:",
                        "kind(self[[(arg 2)[[1]][1]]])).\n")

                    if (is.null(FUN)) {
                        if (!quiet) warning(paste0(
                            "s3d7a: .receive: the instance",
                            " has no element named ", NAME, ".\n"))
                        return(default) }

                    if (!is.function(FUN)) {
                        if (!quiet) warning(paste0(
                            "s3d7a: .receive: the element",
                            " named ", NAME, " is not a function.\n"))
                        return (default) }

                    if (!quiet) cat(paste0(
                        "s3d7a: .receive: dispatching rest",
                        " of list (as arg 2) to the internal ",
                        NAME, " function with primary arg self.\n"))
                    return (FUN(., RHS[-1]))
                    
                } #else

            } ) } #.receive, list, else

        class(instance) <- "s3d7a"

        instance }
