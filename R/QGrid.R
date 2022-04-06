#' Helper to create grid containers
#' @export
#' @importFrom shiny.mui Grid
#' @example inst/examples/QGrid.R
Container <- function(...) Grid(..., container = TRUE)

#' Helper to create grid items. Width is 12 by default.
#' @export
#' @importFrom shiny.mui Grid
#' @example inst/examples/QGrid.R
Item <- function(...) Grid(..., item = TRUE)