#' Q Select
#'
#' Warning. This will not render correctly if not attatched to a shiny server.
#' @export
#' @param options A list of key value pairs
#' @param ... args to pass to the element shiny.mui::Select.shinyInput() element
#' @param label label to display for the select
#' @importFrom shiny.mui Select.shinyInput
#' @importFrom htmltools tags
#' @example inst/examples/QSelect.R
QSelect.shinyInput <- function(..., options, label = "") {
    children <- names(options) |>
        lapply(\(x) tags$option(value = x, options[[x]]))
    shiny.mui::FormControl(
        shiny.mui::InputLabel(label),
        Select.shinyInput(..., native = T, children, label = label)
    )
}
