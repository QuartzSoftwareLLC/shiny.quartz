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
use_mod <- function(mod_name = "name") {
    file <- quartz_sys("templates/R/mod_example.R")
    text <- gsub("name", mod_name, readChar(file, file.info(file)$size))
    writeLines(text, paste0("R/mod_", mod_name, ".R"))
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
