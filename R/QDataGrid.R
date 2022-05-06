#' Helper to create data grids
#' @export
#' @importFrom shiny.mui DataGrid Box
#' @importFrom purrr transpose
#' @example inst/examples/QDataGrid.R
QDataGrid <- function(data, height = "400px", columns = NULL, minColWidth = 100, ...) {
    columnz <- names(data) %>%
        lapply(\(x) list(field = x, flex = 1, minWidth = minColWidth))
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