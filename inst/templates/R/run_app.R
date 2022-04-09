#' The application server-side
#'
#' @param input,output,session Internal parameters for {shiny}.
#'     DO NOT REMOVE.
#' @import shiny
#' @noRd
app_server <- function(input, output, session) {
    # Your application server logic
    mod_example_server("example")
}

#' @importFrom shiny.quartz QCard Container Item QSelect.shinyInput make_options AcknowledgementCard
app_ui <- function(request) {
    shiny.quartz::Page(
        "Example",
        mod_example_ui("example")
    )
}


#' @export
run_app <- function() {
    shiny::shinyApp(
        server = app_server,
        ui = app_ui,
    )
}