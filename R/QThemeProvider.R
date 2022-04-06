#' @export
#' @importFrom shiny.mui ThemeProvider
QThemeProvider <- function(...) {
    input <- list(defaultProps = list(fullWidth = T, size = "small"))
    ThemeProvider(
        ...,
        theme = list(components = list(
            MuiTextField = input,
            MuiFormControl = input,
            MuiSelect = input
        ))
    )
}