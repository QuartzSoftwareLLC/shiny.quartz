library(shiny.quartz)
library(shiny)


if (interactive()) {
    shinyApp(
        ui = div(
            QSwitch.shinyInput("text", label = "Label", value = T),
            textOutput("textValue")
        ),
        server = function(input, output) {
            output$textValue <- renderText({
                sprintf("Value: %s", input$text)
            })
        }
    )
}
