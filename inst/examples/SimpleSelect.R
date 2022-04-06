library(shiny.quartz)
library(shiny)


if (interactive()) {
    shinyApp(
        ui = div(
            SimpleSelect.shinyInput("text", fullWidth = T, label = "First One", value = "two", options = make_options("one", "two", "three")),
            textOutput("textValue")
        ),
        server = function(input, output) {
            output$textValue <- renderText({
                sprintf("Value: %s", input$text)
            })
        }
    )
}
