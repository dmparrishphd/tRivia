factorToCharacter.df <- function(X, i=seq_len(ncol(X))) {
    for (k in i) if (is.factor(X[[k]])) X[[k]] <- as.character(X[[k]])
    X }
