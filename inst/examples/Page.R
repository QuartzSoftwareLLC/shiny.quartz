library(shiny.quartz)
library(shiny.mui)

component_example(
    Page(
        "Title",
        TextField.shinyInput("test", label = "Should be Full Width")
    )
)