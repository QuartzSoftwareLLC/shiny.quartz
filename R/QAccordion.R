#' Quartz Accordion
#' 
#' A simplified version of the default accordion built with MUI
#' 
#' @param title The title of the accordion
#' @param ... The inner content of the accordion
#' @importFrom shiny.mui Accordion Typography AccordionSummary AccordionDetails
#' @examples
#' component_example(QAccordion(title = shiny.mui::Typography("Title"), shiny.mui::Typography("Hello")))
QAccordion <- function(title, ...) {
    Accordion(AccordionSummary(title), AccordionDetails(...))
}
