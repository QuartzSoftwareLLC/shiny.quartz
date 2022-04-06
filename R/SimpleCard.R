#' Helper to create cards with card content
#' @export
#' @importFrom shiny.mui Card CardContent Typography
SimpleCard <- function(..., title = "") {
    Card(CardContent(Typography(variant = "h5", color = "primary", title, sx = list(mb = 1)), ...))
}
