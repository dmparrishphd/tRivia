ibin
====

Representation of binary digits as an integer vector

Usage
-----

    ibin(n, bits = 32L)
    
| Argument | Description                               |
| -------: | :---------------------------------------- |
|      `n` | An `integer` vector with a single element |
|   `bits` | Size of an `integer` element in bits      |
 
Value
-----

An `integer` vector with elmements `0` and `1` according to the bits of `n`.

Examples
--------

    ibin ( -1L )
    # [1] 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
    ibin ( NA_integer_ )
    # [1] 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1
    ibin(0L)
    # [1] 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0

Details
-------

Tested on an R 4.0.3 Windows installation (32-bit `integer`).
