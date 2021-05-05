trendline
=========

"Best fit" line through points.

Usage
-----

    trendline(x, y)

| Argument | Description        |
| -------: | :----------------- |
|      `x` | a `numeric` vector |
|      `y` | a `numeric` vector |

Value
-----

A `double` vector of _three_ elements representing the equation
"_c_ + _a x_ + _b y_ = 0" (or " -_b y_ = _a x_ + _c_" or "_y_ = _a x_ + _c_").
The coefficients are in the order ( _c_ , _a_ , _b_ ).
The third coefficient (_c_) is always `-1`.

Details
-------

Internally, the best fit line is computed from `lm( y ~ x )`.

Code
----

_See_ ["5"](./trendline.R).
