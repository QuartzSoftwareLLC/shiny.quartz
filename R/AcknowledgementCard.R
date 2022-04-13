#' A card for acknowledging the authors of a publication.
#' @param authors A vector of author names.
#' @export
#' @example inst/examples/AcknowledgementCard.R
AcknowledgementCard <- function(authors = c("Timothy L. Wiemken", "Jacob A. Clarke", "Christopher Prener", "Verna Welch", "John McLaughlin")) {
    QCard(
        title = "Acknowledgements",
        shiny.mui::List(authors %>% lapply(\(x) QListItem(x))),
    )
}