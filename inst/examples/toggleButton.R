library(shiny.quartz)
library(shiny.mui)
library(shiny)

if (interactive()) {
    shinyApp(
        ui = tagList(
            reactOutput("button1_output"),
        ),
        server = function(input, output) {
            open <- reactiveVal(F)
            output$button1_output <- renderToggleButton(TableViewIcon, open, input)
        }
    )
}
