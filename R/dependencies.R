#' Quartz Depdendency
#' 
#' Used to source dependencies from the js folder written in react.
#' @importFrom shiny.mui muiDependency
quartzDependency <- function() {
  shiny.react::reactElement(module = "@mui/material", name = "Box", deps = muiDependency(), props = shiny.react::asProps())
  htmltools::htmlDependency(
    name = "quartz",
    version = "0.1.0",
    package = "shiny.quartz",
    src = "www",
    script = "quartz.js"
  )
}