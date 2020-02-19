
# css ---------------------------------------------------------------------

serveCss <- function(request, response, keys, ...) {
  response$status <- 200L
  response$type <- 'text/css'
  response$body <- readCss(paste0("vue-app/dist/css/", keys))
  return(FALSE)
}

# js ---------------------------------------------------------------------

serveJs <- function(request, response, keys, ...) {
  response$status <- 200L
  response$type <- 'text/javascript'
  response$body <- readCss(paste0("vue-app/dist/js/", keys))
  return(FALSE)
}

# images ---------------------------------------------------------------------

serveImage <- function(request, response, keys, ...) {

  response$status <- 200L
  response$type <- 'text/javascript'
  response$body <- readCss(paste0("vue-app/dist/img/", keys))
  return(FALSE)
}