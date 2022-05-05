#' vstack
#'
#' A layout component for stacking vertically with gaps.
#' @export
#'
#' @example inst/examples/VStack.R
VStack <- function(..., sx = list()) {
    shiny.mui::Box(
        sx = c(sx, list(gap = "10px", display = "flex", flexDirection = "column")), ...
    )
}