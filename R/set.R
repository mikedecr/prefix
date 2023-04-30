#' Prefix function binding for `[`
#'
#' `index(a, b)` is equivalent to `a[b]`.
#' @usage NULL
#' @export
index = `[`

#' Prefix function binding for `[[`
#'
#' `item(a, b)` is equivalent to `a[[b]]`.
#' @usage NULL
#' @export
item = `[[`

#' Prefix function binding for `%in%`
#'
#' `isin(a, b)` is equivalent to `a %in% b`.
#' @usage NULL
#' @export
#' @seealso [is.element()]
isin = `%in%`

# other set operators like union and intersect already defined =)

