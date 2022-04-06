#' Q List
#' @export
#' @importFrom shiny.mui List ListItem ListItemText
#' @example inst/examples/QListItem.R
QListItem <- function(primary, ..., secondary = "") {
    ListItem(
        ...,
        ListItemText(primary = primary, secondary = secondary)
    )
}