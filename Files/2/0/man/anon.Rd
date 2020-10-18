\name{anon}
\alias{anon}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Remove Names, etc. from an Object
%%  ~~function to do ... ~~
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
anon(X)
X <- anon(X)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{X}{any object}
}
\details{
\code{anon} works by \code{NULL}ifying existing \code{dimnames}, \code{names},
and/or \code{row.names} attributes.
}
\value{
A copy of \code{X}, without \code{names}, etc.
}
% \references{
% }
\author{
    D. Michael Parrish
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
%\examples{
%}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ attributes }
