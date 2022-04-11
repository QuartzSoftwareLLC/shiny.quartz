component <- function(name, module = "@/shiny.quartz") {
    function(...) {
        shiny.react::reactElement(
            module = module,
            name = name,
            props = shiny.react::asProps(...),
            deps = quartzDependency()
        )
    }
}

#' ReactMarkdown
#' @export
ReactMarkdown <- component("ReactMarkdown")