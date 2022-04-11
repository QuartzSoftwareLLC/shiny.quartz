library(shiny.mui)
library(shiny.quartz)
library(shiny)


if (interactive()) {
    shinyApp(
        ui = div(
            IconButton.shinyInput("showDialog", InfoIcon()),
            reactOutput("reactDialog")
        ),
        server = function(input, output) {
            output$reactDialog <- renderDialog("showDialog", input, "Hi there")
        }
    )
}