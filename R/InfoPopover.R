#' Info Popover
#' 
#' Provides a icon that shows a popover with children when clicked.
#' @param ... Children to include in the popover.
#' @export
#' @examples
#' component_example(InfoPopover("Hi", "Hello"))
InfoPopover <- function(...) {
    IconPopover(..., Icon = shiny.mui::InfoIcon())
}