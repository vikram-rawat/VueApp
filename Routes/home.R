
# home --------------------------------------------------------------------

home <- function(request, response, keys, ...) {
  response$status <- 200L
  response$type <- 'html'
  response$body <- toJSON(mtcars)
  return(FALSE)
}

# home fallback -----------------------------------------------------------

homeFallback <- function(request, response, keys, ...) {
  response$status <- 200L
  response$type <- 'html'
  response$body <- readHtml("vue-app/dist/index.html")
  return(FALSE)
}