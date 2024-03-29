library(shiny.mui)
library(shiny)
library(shiny.quartz)
data(mtcars)

if (interactive()) {
    shinyApp(
        ui = div(
            reactOutput("data")
        ),
        server = function(input, output) {
            output$data <- renderReact({
                QDataGrid(tidyiddr::influenza_burden(), minColWidth = 100)
            })
        }
    )
}
