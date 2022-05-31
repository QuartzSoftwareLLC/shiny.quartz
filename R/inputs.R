#' Create Shiny Input Component from React JS
#' @param name The name of the component.
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
#' @param input_id The input id
#' @param value The value of the input
#' @param children The icon to use for the switch
#' @example inst/examples/IconSwitch.R
#' @export
IconSwitch.shinyInput <- input("IconSwitch")

#' ListSlider
#'
#' An animated slider component that takes a list for options. Value is reset when options change.
#' 
#' @param value value of default value.
#' @param options vector of options.
#' @param animate whether to animate the slider to automatically step through options
#' @param animationInterval integer interval in milliseconds for the slider to automatically step through options
#' @param animationStepSize change in index in options for each step on animation
#' @param markInterval interval at which marks should be added to the slider
#' 
#' @example inst/examples/ListSlider.R
#' @export
ListSlider.shinyInput <- input("ListSlider")