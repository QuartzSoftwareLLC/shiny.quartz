library(shiny.quartz)
library(shiny.mui)
library(shiny)


if (interactive()) {
    shinyApp(
        ui = div(
            IconSwitch.shinyInput("text", TableViewIcon(), value = T),
            textOutput("textValue")
        ),
        server = function(input, output) {
            output$textValue <- renderText({
                sprintf("Value: %s", input$text)
            })
        }
    )
}
