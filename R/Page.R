#' Page
#' @export
#' @example inst/examples/Page.R
#' @importFrom shiny tags HTML tagList
Page <- function(title, ...) {
    tagList(
        tags$head(tags$style(
            HTML("
           body {
          background-color: #F0F2F5;
          }"))),
        tags$body(
            QThemeProvider(
                shiny.mui::Typography(variant = "h4", title, color = "primary", sx = list(m = 1)),
                ...
            )
        )
    )
}