#' Toggleable button
#' @param Icon the icon for the button
#' @param open a reactive val
#' @importFrom shiny.mui renderReact
#' @import shiny
renderToggleButton <- function(Icon, open, input) {
    toggleOpen <- function() {
        open(isolate(!open()))
    }
    inner_id <- paste0(runif(1), "_input")
    observeEvent(input[[inner_id]], toggleOpen())

    renderReact(IconButton.shinyInput(inner_id, Icon(color = ifelse(open(), "primary", "default"))))
}