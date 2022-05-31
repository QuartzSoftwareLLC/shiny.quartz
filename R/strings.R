#' format_ci
#' Pretty print CI
#' @param val main value
#' @param lower lower CI
#' @param upper upper CI
#' @examples
#' format_ci(0.5, 0.1, 0.9)
#' @export
format_ci <- function(val, lower, upper) {
    format <- \(x) prettyNum(x, big.mark = ",")
    return(paste0(format(val), " (", format(lower), " - ", format(upper), ")"))
}