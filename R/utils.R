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
#' @export
use_app <- function() {
    file <- quartz_sys("templates/app.R")

    fs::file_copy(
        file,
        "app.R",
        overwrite = TRUE
    )
}

#' Uses mod example
#' @export
use_mod <- function() {
    file <- quartz_sys("templates/R/mod_example.R")

    fs::file_copy(
        file,
        "R/mod_example.R",
        overwrite = TRUE
    )
}

#' Uses dev
#' @export
use_dev <- function() {
    file <- quartz_sys("templates/dev")
    fs::dir_copy(
        file,
        "dev",
        overwrite = TRUE
    )
}
