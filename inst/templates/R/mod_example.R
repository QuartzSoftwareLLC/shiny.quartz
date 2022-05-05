#' name UI Function
#'
#' @noRd
#' @importFrom shiny NS tagList
#' @importFrom shiny.quartz QCard
mod_name_ui <- function(id) {
    ns <- NS(id)
    QCard(
        title = name,
    )
}


#' name Server Funciton
#'
#' @noRd
mod_name_server <- function(id) {
    moduleServer(id, function(input, output, session) {
        ns <- session$ns
    })
}
