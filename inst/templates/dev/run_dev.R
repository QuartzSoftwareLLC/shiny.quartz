pkgload::load_all(".")
options(shiny.port = 4040)
options(shiny.autoreload = TRUE)
options(shiny.launch.browser = FALSE)
options(shiny.autoreload.pattern = glob2rx("*.R"))

shiny::runApp(run_app())
