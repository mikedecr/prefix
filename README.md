
# The `prefix` package for R

<!-- badges: start -->
<!-- badges: end -->

`prefix` provides an ergonomic _prefix function_ interface to built-in infix operators in R.

In short:

- Expressions like `2 * 3` are called _infix_ expressions. The operator `*` goes between its arguments.
- Every infix expression can be written as a _prefix_ expression in R, such as <code>\`*\`(2, 3)</code>. But it isn't very easy to type the backticks, and it isn't easy to read.
- `prefix` provides new function bindings for these operators, so your can write your prefix expression as `mult(2, 3)` instead. Much easier!

`prefix` provides this functional interface with a more natural _feel_, similar to the way you might invoke these operations in functional languages like Haskell and Lisp(s).


## ...but why?

The main idea in `prefix` is either banal or sublime, depending on your style.

As it is implemented in the code, `prefix` is nothing but new names for existing functions.
If you are happy using infix notation, `prefix` will seem useless.

But if you are partial to the functional style (pun intended), `prefix` allows you to interact with primitive operations in R uniformly and consistently with all other functions, allowing smoother and more expressive function composition.


## Caveats

This package is in its infancy and subject to aggressive change.

Here's a running list of to-dos:

- [x] Basic arithmetic
- [x] Matrix arithmetic
    - [x] outer + kronecker already built in
- [x] Logical operators
    - [x] xor already built in
    - [x] item_or, item_and naming
- [-] Indexing / subsetting operations (including set %in%)
    - how to do `$`?
- misc:
    - [x] range / iota

Less of a priority:

- [ ] extract-or-replace? (@) (see slot())
- [ ] Control flow keywords?
- [ ] formula
- [ ] assignment


## Installation

You can install the development version of `prefix` (at your own risk) with `devtools`:

``` r
# in the R REPL:
devtools::install_github("mikedecr/prefix")
```


## Examples

``` r
library(prefix)

mult(3, 4)  # a * b
# [1] 12

isin(7, c(7, 8, 9))  # a %in% b
# [1] TRUE

or(0, FALSE)  # a | b
# [1] FALSE
```

