# " @export
# " @importFrom shiny.mui ThemeProvider
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
            MuiSelect = input
        ))
    )
}