# Protopackages

By *protopackage*,
I mean a file or files that is/are intended to be loaded with `source`
(as opposed to `library`) and does _not_ need to be installed (as in `install.packages`).

## What's wrong with Packages?

Gerald J. Sussman has said that he is willing to give up almost everything to maximize flexibility.
The [tRivia]()

1. They must be `install.packages`-ed in order to enable loading via `library`.

2. Installing a package converts it from possibly human-readable text into machine-specific code.

3. Once a package has been attached,
it is hard to make changes and see their effects:
R won't load the updated version.
(have to kill R and start a new session).
This drastically impacts speed of development.

4. It's hard to add to a library.
If we want to make change a typo in the documentation,
we have to issue an entire new version.

5. It's hard to subtract from a library.
I recently examined a package that defined only one function,
and had a huge amount of example data sets.
How to remove the data sets?
Also, the manual had dozens of pages describing the data sets.

5. In order to make one package, knowledge of the _198-page_
[Writing R Extensions](https://cran.r-project.org/manuals.html)
is required.
It should not be this hard to extend functionality.
