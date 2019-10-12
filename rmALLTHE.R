rmstr <- function (pattern, x, ...) gsub(pattern, "", x, ...)

rmnl <- function (x, ...) rmstr("\n", x)

rmtabs <- function (x, ...) rmstr("\t", x)

rmna <- function(x) x[!is.na(x)]

rmnullstrings <- function (x) x[!!nchar(x)]

rmz <- function(x) x[!!x]
