#' A card for acknowledging the authors of a publication.
#' @param authors A vector of author names.
AcknowledgementCard <- function(authors = c("Timothy L. Wiemken", "Jacob A. Clarke", "Christopher Prener", "John McLaughlin")) {
    shin.mui::make_card(
        title = "Acknowledgements"
    )
}