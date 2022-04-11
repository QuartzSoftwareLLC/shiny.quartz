library(shiny.mui)
library(shiny)


if (interactive()) {
    shinyApp(
        ui = div(
            Button.shinyInput("showDialog", "Open dialog"),
            reactOutput("reactDialog")
        ),
        server = function(input, output) {
            output$reactDialog <- renderDialog("showDialog", input, "Hi there")
        }
    )
}