

curry = function(f, ...) {
    fixed = list(...)
    curried = function(...) {
        all_args = c(fixed, list(...))
        return(do.call(f, all_args))
    }
    return(curried)
}


