#' Simple Select
#'
#' Warning. This will not render correctly if not attatched to a shiny server.
#' @export
#' @param options A list of key value pairs
#' @importFrom shiny.mui Select.shinyInput
#' @import magrittr
SimpleSelect.shinyInput <- function(..., options, label = "") {
    children <- names(options) %>%
        lapply(\(x) shiny.mui::MenuItem(value = x, options[[x]]))
    shiny.mui::FormControl(
        shiny.mui::InputLabel(label),
        Select.shinyInput(..., children, label = label)
    )
}
