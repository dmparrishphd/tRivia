heaviside
=========

Usage
-----

    heaviside0(x)
    heaviside1(x)
    heaviside2(x, zero=NA)

Description
-----------

The Heaviside Step Function, `H`, for three choices of `H(0)`: 0, 1, or argument 2.

See Also
--------

Search: 
[Heaviside Step Function](https://duckduckgo.com/?t=ffab&q=Heaviside+Step+Function&ia=web)

Examples
--------

    e <- .Machine$double.eps

    heaviside1(-e)
    heaviside1(0)
    heaviside1(e)

    heaviside0(-e)
    heaviside0(0)
    heaviside0(e)

    heaviside2(-e)
    heaviside2(0)
    heaviside2(e)

    heaviside2(0, 1/2)
