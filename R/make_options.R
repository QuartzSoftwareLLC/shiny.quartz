#' Make options for QSelect
#' 
#' Converts vectors to a list of keyword pairs.
#' 
#' @param ... A vector of strings.
#' 
#' @examples
#' make_options(1:5)
#' @seealso [QSelect.shinyInput()]
#' @export
make_options <- function(...) stats::setNames(as.list(c(...)), c(...))