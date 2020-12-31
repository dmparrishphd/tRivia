heavisideAd
===========

Usage
-----

    heaviside(x)
    b.heaviside(x)

Description
-----------

The Heaviside Step Function, `H`, with `H(0)` == NA.

`b.heaviside` returns a `logical` value (`F`, `NA`, or `T`).

`heaviside` returns an `integer` (`0L`, `NA_integer_`, or `1L`).

See Also
--------

Search: 
[Heaviside Step Function](https://duckduckgo.com/?t=ffab&q=Heaviside+Step+Function&ia=web)

Examples
--------

    e <- .Machine$double.eps

    b.heaviside(-e)
    b.heaviside(0)
    b.heaviside(e)

    heaviside(-e)
    heaviside(0)
    heaviside(e)
