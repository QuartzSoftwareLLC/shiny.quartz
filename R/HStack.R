#' Horizontal Stack
#'
#' A layout component for stacking horizontally with gaps.
#' @param ... A list of components to stack.
#' @param sx A list of style attributes to apply to the component.
#' @export
#' @family layout
#' @examples
#' component_example(HStack(tags$button("hi", "HI"), tags$button("hi", "hi")))
HStack <- function(..., sx = list()) {
    shiny.mui::Box(
        sx = c(sx, list(gap = "10px", display = "flex")), ...
    )
}