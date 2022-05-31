#' Container
#' Helper to create grid containers
#' 
#' @param ... other props to pass to the react component. 
#' 
#' @export
#' @family layout
#' @family grid
#' @example inst/examples/QGrid.R
Container <- function(...) shiny.mui::Grid(..., container = TRUE)

#' Item
#' 
#' Helper to create grid items. Width is 12 by default.
#'
#' @param ... other props to pass to the react component. 
#' @export
#' @family layout
#' @family grid
#' @example inst/examples/QGrid.R
Item <- function(...) shiny.mui::Grid(..., item = TRUE)