#' Page
#' 
#' Generates a page with a gray background and a title at the top.
#' Also applies qthemeprovider to the page.
#' 
#' @param title character the title of the page.
#' @param ... a list of components to include in the page.
#' 
#' @examples
#' component_example(Page("Title", "Hello there"))
#' 
#' @family layout
#' @seealso [QThemeProvider()]
#' @importFrom shiny tags HTML tagList
#' @export
Page <- function(title, ...) {
    tagList(
        tags$head(tags$style(
            HTML(paste0("
           body {
          background-color: ",
          shiny.quartz::background,
          ";}")))),
        tags$body(
            QThemeProvider(
                shiny.mui::Typography(variant = "h4", title, color = "primary", sx = list(m = 1)),
                ...
            )
        )
    )
}