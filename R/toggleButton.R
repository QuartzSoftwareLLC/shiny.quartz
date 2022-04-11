#' Toggleable button
#' @param Icon the icon for the button
#' @param open a reactive val
#' @importFrom shiny.mui renderReact IconButton.shinyInput
#' @import shiny
#' @export
renderToggleButton <- function(output_id, Icon, input, output, ns = NS()) {       
        open <- reactiveVal(F)
        toggleOpen <- function() {
            open(isolate(!open()))
        }
        inner_id <- paste0(output_id, "_inner")
        observeEvent(input[[inner_id]], toggleOpen())
        output[[paste0(output_id, "_open")]] <- reactive({
            open()
        })
        output[[output_id]] <- renderReact(
            Box(
                IconButton.shinyInput(ns(inner_id), Icon(color = ifelse(open(), "primary", "default"))),
                Box(sx = list(display = "hidden", height = 0, opacity = 0, fontSize = 0), textOutput(ns(paste0(output_id, "_open")))) # needed to get conditionals to work
            )
        )
}