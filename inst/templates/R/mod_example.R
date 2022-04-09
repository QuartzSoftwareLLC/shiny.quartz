#' benefits UI Function
#'
#' @noRd
#' @importFrom shiny NS tagList
#' @importFrom shiny.quartz QCard
mod_ve_ui <- function(id) {
    ns <- NS(id)
    QCard(
        title = "Example",
    )
}


#' Example Server Funciton
#'
#' @noRd
mod_example_server <- function(id, globalInput) {
    moduleServer(id, function(input, output, session) {
        ns <- session$ns
    })
}
