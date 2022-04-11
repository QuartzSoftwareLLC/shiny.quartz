library(shiny.quartz)
library(shiny.mui)

component_example(
    Box(),
    ReactMarkdown(readr::read_file("inst/markdown/Example.md"))
)