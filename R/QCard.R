#' Helper to create cards with card content
#' @export
#' @importFrom shiny.mui Card CardContent Typography Box
#' @example inst/examples/QCard.R
QCard <- function(..., title = "", Toolbar = Box()) {
    Card(CardContent(
        Box(display = "flex", flexWrap = "wrap", alignItems="center", justifyContent = "space-between",
            Typography(variant = "h5", color = "primary", title, sx = list(mb = 1)),
            Toolbar),
         ...))
}
