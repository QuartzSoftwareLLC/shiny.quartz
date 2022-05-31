library(fs)

quartz_sys <- function(...,
                       lib.loc = NULL,
                       mustWork = FALSE) {
    system.file(
        ...,
        package = "shiny.quartz",
        lib.loc = lib.loc,
        mustWork = mustWork
    )
}


#' Uses the default app for quartz packages
#' 
#' This is needed for hosting on shinyapps.io
#' @family utils
#' @export
use_app <- function() {
    file <- quartz_sys("templates/app.R")

    fs::file_copy(
        file,
        "app.R",
        overwrite = TRUE
    )
}

#' Uses the default runapp for quartz packages
#' @family utils
#' @export
use_run_app <- function() {
    file <- quartz_sys("templates/R/run_app.R")

    fs::file_copy(
        file,
        "R/run_app.R",
        overwrite = TRUE
    )
}

#' Create a module
#' @family utils
#' @param mod_name name of the module to create
#' @export
use_mod <- function(mod_name = "name") {
    file <- quartz_sys("templates/R/mod_example.R")
    text <- gsub("name", mod_name, readChar(file, file.info(file)$size))
    writeLines(text, paste0("R/mod_", mod_name, ".R"))
}

#' Add the dev file to run development version of app
#' @family utils
#' @export
use_dev <- function() {
    file <- quartz_sys("templates/dev")
    fs::dir_copy(
        file,
        "dev",
        overwrite = TRUE
    )
}
