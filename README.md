
# prefix

<!-- badges: start -->
<!-- badges: end -->

`prefix` provides an ergonomic _prefix function_ interface to built-in infix operators in R.
We specify "ergonomic" because, although there is a prefix interface to these operators---<code>\`*\`(2, 3)</code> is valid R code that returns `6`---it is awkward to invoke.

`prefix` provides this functional interface with a more natural _feel_, similar to the way you might invoke these operations in functional languages like Haskell and Lisp(s).

**This package is in its infancy. See the _To-do_ section below.**


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
This package binds these operations to function names that are more intuitive and readable.


## Installation

You can install the development version of prefix like so:

``` r
devtools::install_github("mikedecr/prefix")
```


## To-do

- [x] Basic arithmetic
- [x] Matrix arithmetic
    - outer + kronecker already built in
- [x] Logical operators
    - xor already built in
    - item_or, item_and naming
- [ ] Indexing / subsetting operations (including set %in%)
    - how to do `$`?
- misc:
    - [x] range / iota

Less of a priority:

- [ ] extract-or-replace? (@) (see slot())
- [ ] Control flow keywords?
- [ ] formula
- [ ] assignment


## Example

``` r
library(prefix)

mult(3, 4)  # a * b
# [1] 12

isin(7, c(7, 8, 9))  # a %in% b
# [1] TRUE

or(0, FALSE)  # a | b
# [1] FALSE
```

