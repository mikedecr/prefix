
# prefix

<!-- badges: start -->
<!-- badges: end -->

`prefix` provides an ergonomic _prefix function_ interface to built-in infix operators in R.

For example, instead of the _infix_ expression `2 * 3`, we can write the _prefix_ expression `mult(2, 3)`.

Although R already has a prefix interface to these operators---<code>\`*\`(2, 3)</code> is valid R code that returns `6`---the backticks make it awkward to invoke.
`prefix` provides this functional interface with a more natural _feel_, similar to the way you might invoke these operations in functional languages like Haskell and Lisp(s).

The main idea in `prefix` is either banal or sublime, depending on your style.
If you are comfortable with binary infix operators, `prefix` will be useless.
But if you are partial to the functional style (pun intended), `prefix` allows you to interact with basic operations in R that is uniform and consistent with virtually all other R functions, allowing smoother and more expressive function composition between basic and higher-order functions in R.
This is exactly what functional programming dorks want!


## Caveats

This package is in its infancy and subject to radical change.

See the **to-do** section below.

## Installation

You can install the development version of `prefix` (at your own risk) with `devtools`:

``` r
# in the R REPL:
devtools::install_github("mikedecr/prefix")
```


## More info: what do "infix" and "prefix" mean?

An _infix operator_ is a symbol that, when written between two R objects, computes a function on those objects.
For instance, the multiplication symbol `*` is an infix operator that computes a function of `a` and `b`, and that function happens to be their product.
Infix operators are also called "binary" operators, because they are operations on two arguments (or "operands"), although "infix" refers more properly to the location of the operator.
Writing statements with infix operators is known as "infix notation".

"Prefix" notation, meanwhile, puts the operator _before_ the operands.
So instead of `a * b`, we can write `mult(a, b)`, where you can imagine that `mult` is a function defined as such:

```{r}
mult <- function(a, b) {
    return(a * b)
}
```


## To-do

- [x] Basic arithmetic
- [x] Matrix arithmetic
    - outer + kronecker already built in
- [x] Logical operators
    - xor already built in
    - item_or, item_and naming
- [/] Indexing / subsetting operations (including set %in%)
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

