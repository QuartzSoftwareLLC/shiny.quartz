#' Helper to create data grids
#' @export
#' @importFrom shiny.mui DataGrid Box
#' @importFrom purrr transpose
#' @example inst/examples/QDataGrid.R
QDataGrid <- function(data, height = "400px", columns = NULL, ...) {
    columnz <- names(data) %>%
        lapply(\(x) list(field = x))
    if (!is.null(columns)) {
        columnz <- columns
    }    
    data$id <- 1:nrow(data)
    rows <- transpose(data)
    Box(
        minHeight = "300px", height = height,
        DataGrid(rows = rows, columns = columnz, ...)
    )
}