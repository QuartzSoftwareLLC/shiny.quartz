#' Builds options for QSelect
#' @export
#' @param vec A vector of strings.
make_options <- function(...) setNames(as.list(c(...)), c(...))