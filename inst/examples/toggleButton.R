library(shiny.quartz)
library(shiny.mui)
library(shiny)

if (interactive()) {
    shinyApp(
        ui = tagList(
            reactOutput(NS("button")("burden_button")),
            conditionalPanel(condition = "output.burden_button_open", "Opened", ns = NS("button"))
        ),
        server = function(input, output, server) {
            id <- "button"
             moduleServer(id, function(input, output, session) {
                 ns <- session$ns
            renderToggleButton("burden_button", TableViewIcon, input, output, ns)
             })
        }
    )
}
