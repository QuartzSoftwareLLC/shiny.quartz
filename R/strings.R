#' format_ci
#' Pretty print CI
#' @param val main value
#' @param lower lower CI
#' @param upper upper CI
#' @export
format_ci <- function(val, lower, upper) {
    return(paste0(val, " (", lower, " - ", upper, ")"))
}