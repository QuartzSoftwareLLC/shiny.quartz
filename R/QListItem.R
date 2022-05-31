#' Q List Item
#' 
#' Helper to create shiny.mui list items with primary and secondary text
#' 
#' @param primary primary text
#' @param secondary secondary text
#' 
#' @seealso [shiny.mui::List()]
#' @export
#' @importFrom shiny.mui List ListItem ListItemText
#' @example inst/examples/QListItem.R
QListItem <- function(primary, ..., secondary = "") {
    ListItem(
        ...,
        ListItemText(primary = primary, secondary = secondary)
    )
}