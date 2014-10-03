
#' @importFrom assertthat assert_that is.string

`%s%` <- function(lhs, rhs) {
  assert_that(is.string(lhs))
  list(lhs) %>%
    c(as.list(rhs)) %>%
    do.call(what = sprintf)
}

assert_diff_time <- function(x) {
  stopifnot(inherits(x, "difftime"))
}
