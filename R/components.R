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
#' 
#' Render inner markdown text. This comes from the `react-markdown` package. https://github.com/remarkjs/react-markdown
#' @param ... args to pass to react markdown
#' @export
ReactMarkdown <- component("ReactMarkdown")

#' IconPopover
#' @param ... args to pass to the iconpopover
#' @export
IconPopover <- component("IconPopover")