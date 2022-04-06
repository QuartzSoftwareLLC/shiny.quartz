muiDependency <- function() {
    htmltools::htmlDependency(
        name = "quartz",
        version = "0.1.0",
        package = "shiny.quartz",
        src = "www",
        script = "mui.js"
    )
}


component <- function(name, module = "@/shiny.quartz") {
    function(...) {
        shiny.react::reactElement(
            module = module,
            name = name,
            props = shiny.react::asProps(...),
            deps = muiDependency()
        )
    }
}


#' Theme provider
#' @export
QThemeProvider <- component("ThemeProvider")
