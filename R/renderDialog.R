
#' renderDialog
#' @param button_id the id of the button whose state triggers opening
#' @param input the input to the server module
#' @param ns the namespace
#' @param ... children to pass to shiny.mui::Dialog()
#' @importFrom shiny.mui Dialog DialogContent JS renderReact
#' @importFrom shiny observeEvent
#' @export
renderDialog <- function(button_id, input, ..., ns = shiny::NS(NULL)) {
    isDialogOpen <- shiny::reactiveVal(FALSE)
    hide_input <- paste0("hide_", button_id)

    observeEvent(input[[button_id]], isDialogOpen(TRUE))
    observeEvent(input[[hide_input]], isDialogOpen(FALSE))

    renderReact({
        Dialog(
            maxWidth = "xl",
            open = isDialogOpen(),
            onClose = JS(paste0("function() { Shiny.setInputValue('", ns(hide_input), "', Math.random()); }")),
            DialogContent(
                ...
            )
        )
    })
}