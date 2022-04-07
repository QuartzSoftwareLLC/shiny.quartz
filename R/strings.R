#' format_ci
#' Pretty print CI
#' @param val main value
#' @param lower lower CI
#' @param upper upper CI
#' @export
format_ci <- function(val, lower, upper) {
    format <- \(x) prettyNum(x, big.mark = ",")
    return(paste0(format(val), " (", format(lower), " - ", format(upper), ")"))
}