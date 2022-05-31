#' QSwitch
#'
#' Helper to add labels to shiny.mui switches
#' 
#' @param ... other props to pass to the react component.
#' @param label label to display
#' 
#' @seealso [shiny.mui::Switch()]
#' @export
#' @importFrom shiny.mui Switch.shinyInput FormControlLabel
QSwitch.shinyInput <- function(..., label) {
    FormControlLabel(control = Switch.shinyInput(...), label = label)
}