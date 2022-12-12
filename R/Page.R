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
        tags$head(
            tags$style(
                sprintf("
        body {
            background-color: %s;
        }
        .waiter-overlay-content{
            position: absolute;
            top: 30px; /*30 pixels from the top*/
            left: 48%; /*48% from the left*/
        }
          ", shiny.quartz::background)
            ),
            waiter::autoWaiter()
        ),
        tags$body(
            QThemeProvider(
                shiny.mui::Typography(variant = "h4", title, color = "primary", sx = list(m = 1)),
                ...
            )
        )
    )
}
