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