#' Page
#' @export
#' @example inst/examples/Page.R
#' @importFrom shiny tags HTML
Page <- function(title, ...) {
    QThemeProvider(
        tags$head(tags$style(HTML("
           body {
          background-color: #F0F2F5;
          }"))),
        tags$body(
            shiny.mui::Typography(variant = "h4", title, color = "primary", sx = list(m = 1)),
            ...
        )
    )
}