input <- function(name, defaultValue = "") {
    function(inputId, ..., value = defaultValue) {
        shiny.react::reactElement(
            module = "@/shiny.quartz", name = name,
            props = shiny.react::asProps(inputId = inputId, ..., value = value),
            deps = quartzDependency()
        )
    }
}

#' IconSwitch
#'
#' @export
IconSwitch.shinyInput <- input("IconSwitch")

#' DateSlider
#'
#' @example inst/examples/DateSlider.R
#' @export
DateSlider.shinyInput <- input("DateSlider")


#' ListSlider
#'
#' An animated slider component that takes a list for options. Value is reset when options change.
#' @example inst/examples/ListSlider.R
#' @export
ListSlider.shinyInput <- input("ListSlider")