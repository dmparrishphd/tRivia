factorToCharacter.df
====================

Usage
-----

    factorToCharacter.df(X, i=seq_len(ncol(X)))

| Argument | Description                                       |
| -------: | :------------------------------------------------ |
|      `X` | a `data.frame`                                    |
|      `i` | `integer` or `characer` indices of columns of `X` |

Value
-----

A `data.frame` like the primary argument, except that the specified columns are conditionally converted to `character` vectors.
The condition being that the specified columns of `X` are factors.
