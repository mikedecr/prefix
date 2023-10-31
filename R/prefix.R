
curry_binary_operation <- function(operator) {
    function(a, b = NULL) {
        if (is.null(b)) {
            function(b) operator(a, b)
        } else {
            operator(a, b)
        }
    }
}

####################
#    arithmetic    #
####################

#' @rdname prefix
#' @title Prefix functions

#' @description Prefix functions for built-in binary operators.
#' @description Example, write `1 + 2` as add(1, 2).
#' @description Functions for binary operations can be partially applied if only one argument is provided. For example,
#' @description add_one = add(1)


#' @usage add(1, 2)
#' @export
add <- curry_binary_operation(`+`)
#' @rdname prefix
#' @usage minus(10, 5)
#' @export
minus <- curry_binary_operation(`-`)
#' @rdname prefix
#' @export
mult <- curry_binary_operation(`*`)
#' @rdname prefix
#' @export
div <- curry_binary_operation(`/`)
#' @rdname prefix
#' @export
pow      <- curry_binary_operation(`^`)
#' @rdname prefix
#' @export
mod      <- curry_binary_operation(`%%`)
#' @rdname prefix
#' @export
floordiv <- curry_binary_operation(`%/%`)
#' @rdname prefix
#' @export
dot      <- curry_binary_operation(`%*%`)
# kronecker and outer already defined, cannot be partially applied

# logic
#' @rdname prefix
#' @export
gt  <- curry_binary_operation(`>`)
#' @rdname prefix
#' @export
geq <- curry_binary_operation(`>=`)
#' @rdname prefix
#' @export
lt  <- curry_binary_operation(`<`)
#' @rdname prefix
#' @export
leq <- curry_binary_operation(`<=`)
#' @rdname prefix
#' @export
eq  <- curry_binary_operation(`==`)
#' @rdname prefix
#' @export
neq <- curry_binary_operation(`!=`)
#' @rdname prefix
#' @export
not <- curry_binary_operation(`!`)
#' @rdname prefix
#' @export
and <- curry_binary_operation(`&`)
#' @rdname prefix
#' @export
or  <- curry_binary_operation(`|`)
#' @rdname prefix
#' @export
xor <- curry_binary_operation(base::xor)
#' @rdname prefix
#' @export
item_and <- curry_binary_operation(`&&`)
#' @rdname prefix
#' @export
item_or  <- curry_binary_operation(`||`)

# range
#' @rdname prefix
#' @export
iota = curry_binary_operation(`:`)

# indexing
# these fns are not currently curryable, but we are working on it.
#' @rdname prefix
#' @export
index = `[`
#' @rdname prefix
#' @export
item = `[[`

# set operations
#' @rdname prefix
#' @export
isin      <- curry_binary_operation(`%in%`)
#' @rdname prefix
#' @export
union     <- curry_binary_operation(base::union)
#' @rdname prefix
#' @export
intersect <- curry_binary_operation(base::intersect)
#' @rdname prefix
#' @export
setdiff   <- curry_binary_operation(base::setdiff)

#' @export
flip <- function(f) {
    function(...) {
        do.call(f, rev(list(...)))
    }
}

