#' A card for acknowledging the authors of a publication.
#' @param authors A vector of author names.
#' @export
#' @example inst/examples/AcknowledgementCard.R
#' @importFrom shiny.mui ListItemButton Link ListItemAvatar Avatar ListItemText
AcknowledgementCard <- function(authors = list(
    list(name = "Timothy L. Wiemken", src = "https://media-exp1.licdn.com/dms/image/C4E03AQE4JkLxHi1g7A/profile-displayphoto-shrink_400_400/0/1603549767246?e=1655337600&v=beta&t=mGGA7RxgQvdi0yIvbwiOJXiJ0uvM_YAm0-UuybyOp8g"),
    list(name = "Jacob A. Clarke", src = "https://www.jacobaclarke.com/headshot_new_cropped.jpg", href = "https://www.jacobaclarke.com/"),
    list(name = "Christopher Prener"),
    list(name = "Verna Welch"),
    list(name = "John McLaughlin"))) {
    QCard(
        title = "Acknowledgements",
        shiny.mui::List(authors %>% lapply(\(x) Link(href = x$href, ListItemButton(ListItemAvatar(Avatar(src = x$src)), ListItemText(primary = x$name)))))
    )
}