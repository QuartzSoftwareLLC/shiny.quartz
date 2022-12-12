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
    waiter::waiter_set_theme(html = waiter::spin_3(), color = "white")

    tagList(
        tags$head(
            tags$style(
                sprintf("
        body {
            background-color: %s ;
        }
        .waiter-overlay-content{
            position: absolute;
            top: 30px;
            left: 48%%;
        }
          ", shiny.quartz::background)
            ),
            waiter::autoWaiter()
        ),
        tags$body(
            QThemeProvider(
                shiny.mui::AppBar(
                    shiny.mui::Toolbar(
                        shiny.mui::IconButton(href = "https://quartzsoftware.com", img(height = 50, width = 50, src = "https://quartzsoftware-assets.s3.amazonaws.com/logo.svg")),
                        shiny.mui::Button(href = "https://epi.quartzsoftware.com", "Infectious Disease Data Repository", sx = list(color = "white"))
                    )
                ),
                shiny.mui::Box(height = 70),
                shiny.mui::Typography(variant = "h4", title, color = "primary", sx = list(m = 1)),
                ...
            )
        )
    )
}
