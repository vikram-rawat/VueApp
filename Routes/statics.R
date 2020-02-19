
# css ---------------------------------------------------------------------

serveCss <- function(request, response, keys, ...) {
  response$status <- 200L
  response$type <- 'text/css'
  response$body <- readCss(paste0("dummy/",keys))
  return(FALSE)
}

# css ---------------------------------------------------------------------

serveJs <- function(request, response, keys, ...) {
  response$status <- 200L
  response$type <- 'text/javascript'
  response$body <- readCss(paste0("dummy/",keys))
  return(FALSE)
}