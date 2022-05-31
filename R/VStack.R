#' vstack
#'
#' A layout component for stacking vertically with gaps.
#' @export
#'
#' @family layout
#' @examples
#' component_example(VStack(tags$button("hi", "HI"), tags$button("hi", "hi")))
VStack <- function(..., sx = list()) {
    shiny.mui::Box(
        sx = c(sx, list(gap = "10px", display = "flex", flexDirection = "column")), ...
    )
}