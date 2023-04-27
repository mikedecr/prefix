
# prefix

<!-- badges: start -->
<!-- badges: end -->

`prefix` provides an ergonomic _prefix function_ interface to infix operators in R.
The goal of `prefix` is to provide a more natural functional interface for these operations, similar to functional languages like Haskell and Lisp(s).


## What do "infix" and "prefix" mean?

An _infix operator_ is a symbol that, when written between two R objects, computes a function on those objects.
For instance, the multiplication symbol `*` is an infix operator that computes a function of `a` and `b`, and that function happens to be their product.
Infix operators are also called "binary" operators, because they are operations on two arguments (or "operands").
Writing these statements with infix operators is also known as "infix notation".

"Prefix" notation, meanwhile, puts the operator _before_ the operands.
So instead of `a * b`, we can write `mult(a, b)`, where you can imagine that `mult` is a function defined as such:

```{r}
mult <- function(a, b) {
    return(a * b)
}
```

You may be aware that this is _already possible_ in R, but the syntax is clumsy.
You have to write the operator in backticks: <code>\`*\`(2, 3)\</code> is valid R code (the result is `6`, naturally).
This package binds these operations to function names that are more intuitive and readable.


## Installation

You can install the development version of prefix like so:

``` r
devtools::install_github("mikedecr/prefix")
```

## Example

For a binary operator `%f%`, a _prefix_ 

``` r
library(prefix)

mult(3, 4)
# [1] 12

isin(7, c(7, 8, 9))
# [1] TRUE

or(0, FALSE)
# [1] FALSE
```

