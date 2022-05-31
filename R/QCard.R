#' Helper to create cards with card content
#' 
#' @param title Title of the card
#' @param ... Children to include in the card
#' @param Toolbar optional toolbar to include in the card
#' 
#' @importFrom shiny.mui Card CardContent Typography Box
#' @seealso [shiny.mui::Card()]
#' @family layout
#' @examples
#' component_example(QCard("Hello there", title = "Card"))
#' @export
QCard <- function(..., title = "", Toolbar = Box()) {
    Card(CardContent(
        Box(
            display = "flex",
            flexWrap = "wrap",
            alignItems = "center",
            justifyContent = "space-between",
            Typography(
                variant = "h5",
                color = "primary", 
                title,
                sx = list(mb = 1)),
            Toolbar),
         ...))
}
