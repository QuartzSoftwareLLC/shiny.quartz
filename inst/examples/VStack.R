library(shiny.quartz)
library(shiny.mui)

Cube <- shiny.mui::Box(height = 100, width = "100%", backgroundColor = "red")
component_example(
    VStack(sx = list(gap = 2), Cube, Cube)
)