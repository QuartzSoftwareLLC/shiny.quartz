#' QDataGrid
#' 
#' Helper to create data grids
#'
#' @param data data_frame to display
#' @param height height of the grid
#' @param columns configuration for individual columns. See the mui documentation for more details [here](https://mui.com/x/react-data-grid/column-definition/)
#' @param minColWidth minimum width of columns
#' @param ... other props to pass to the react component. See [mui documentation](https://mui.com/x/react-data-grid/)
#' 
#' @importFrom shiny.mui DataGrid Box
#' @example inst/examples/QDataGrid.R
#' @export
QDataGrid <- function(data, height = "400px", columns = NULL, minColWidth = 100, ...) {
    columnz <- names(data) %>%
        lapply(\(x) list(field = x, flex = 1, minWidth = minColWidth))
    if (!is.null(columns)) {
        columnz <- columns
    }    
    data$id <- 1:nrow(data)
    rows <- purrr::transpose(data)
    Box(
        minHeight = "300px", height = height,
        DataGrid(rows = rows, columns = columnz, ...)
    )
}