library(shiny.quartz)
library(shiny.mui)

component_example(
    List(QListItem("first", secondary = "go"), QListItem("second"), QListItem("third"))
)