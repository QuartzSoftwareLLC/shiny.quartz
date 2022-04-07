#' QSwitch
#'
#' @export
#' @importFrom shiny.mui Switch.shinyInput FormControlLabel
QSwitch.shinyInput <- function(..., label) {
    FormControlLabel(control = Switch.shinyInput(...), label = label)
}