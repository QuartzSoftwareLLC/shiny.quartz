library(shiny.mui)
library(shiny)
library(magrittr)


if (interactive()) {
  shinyApp(
    ui = div(
      Box(),
      DateSlider.shinyInput("val", value = "2020-01-01", startDate = "2020-01-01", endDate = "2020-12-31"),
      textOutput("textValue")
    ),
    server = function(input, output) {
      output$textValue <- renderText({
        sprintf("Value: %s", input$val)
      })
    }
  )
}
