RedisCache <- R6::R6Class("RedisCache",
    public = list(
        initialize = function(..., namespace = NULL) {
            private$r <- redux::hiredis(...,
                host = Sys.getenv("REDIS_HOST")
            )

            private$r$AUTH(Sys.getenv("REDIS_AUTH"))
            # Configure redis as a cache with a 20 MB capacity
            private$r$CONFIG_SET("maxmemory", "20mb")
            private$r$CONFIG_SET("maxmemory-policy", "allkeys-lru")
            private$namespace <- namespace
            private$cache <- list()
        },
        get = function(key) {
            print("using cache")
            key <- paste0(private$namespace, "-", key)
            local_value <- private$cache[[key]]
            if (!is.null(local_value)) {
                print("using local")
                return(local_value)
            }
            s_value <- private$r$GET(key)
            if (is.null(s_value)) {
                return(structure(list(), class = "key_missing"))
            }
            val <- unserialize(s_value)
            private$cache[[key]] <- val

            val
        },
        set = function(key, value) {
            print("setting")
            key <- paste0(private$namespace, "-", key)
            s_value <- serialize(value, NULL)
            private$r$SET(key, s_value)
        }
    ),
    private = list(
        r = NULL,
        namespace = NULL,
        cache = NULL
    )
)

#' Setup Cache

#' 
#' Please set REDIS_HOST and REDIS_AUTH in your settings
#' @export
setup_cache <- function(namespace) {
    if (system.file(package = "redux") %>% `!=`("")) {
        shiny::shinyOptions(cache = RedisCache$new(namespace = namespace))
    }
}
