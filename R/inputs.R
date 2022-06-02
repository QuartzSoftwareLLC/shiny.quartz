#' Create Shiny Input Component from React JS
#' @param name The name of the component.
#' @param defaultValue the default value of the component.
input <- function(name, defaultValue = "") {
    function(inputId, ..., value = defaultValue) {
        shiny.react::reactElement(
            module = "@/shiny.quartz", name = name,
            props = shiny.react::asProps(inputId = inputId, ..., value = value),
            deps = quartzDependency()
        )
    }
}

#' Icon Switch
#'
#' Adds a switch for boolean values
#' @param ... args to pass to the element including the icon for the switch
#' @param inputId The input id
#' @param value The value of the input
#' @example inst/examples/IconSwitch.R
#' @export
IconSwitch.shinyInput <- input("IconSwitch")

#' ListSlider
#'
#' An animated slider component that takes a list for options. Value is reset when options change.
#' 
#' @param inputId The input id
#' @param value value of default value.
#' @param ... args to pass to the element
#' 
#' @example inst/examples/ListSlider.R
#' @export
ListSlider.shinyInput <- input("ListSlider")