library(shiny.mui)
library(shiny)
library(shiny.quartz)
data(mtcars)
library(dplyr)

if (interactive()) {
    shinyApp(
        ui = div(
            reactOutput("data")
        ),
        server = function(input, output) {
            output$data <- renderReact({
                QDataGrid(mtcars, minColWidth = 100)
            })
        }
    )
}
