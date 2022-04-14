library(shiny.mui)
library(shiny)
library(magrittr)


if (interactive()) {
  shinyApp(
    ui = div(
      Box(),
      ListSlider.shinyInput("val", value = 5, options = seq(1, 10)),
      textOutput("textValue")
    ),
    server = function(input, output) {
      output$textValue <- renderText({
        sprintf("Value: %s", input$val)
      })
    }
  )
}
