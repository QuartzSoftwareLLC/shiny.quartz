#' Provider for Quartz Software MUI Theme
#' @export
#' @importFrom shiny.mui ThemeProvider
#' @param ... aditional args to pass to the ThemeProvider
#' @examples
#' component_example(QThemeProvider(shiny.mui::Button("Hello World")))
QThemeProvider <- function(...) {
    input <- list(defaultProps = list(fullWidth = T, size = "small"))
    ThemeProvider(
        ...,
        theme = list(
        palette = list(
            primary = list(main = "#475C7A"),
            secondary = list(main = "#D8737F"),
            # background = list(paper = "#EFEFFF"),
            warning = list(main = "#685D78")
        ),
        components = list(
            MuiTextField = input,
            MuiFormControl = input,
            MuiGrid = list(defaultProps = list(xs = 12)),
            MuiSelect = input,
            MuiChip = list(defaultProps = list(size = "small")),
            MuiAutocomplete = list(defaultProps = list(filterSelectedOptions = T))
        ))
    )
}