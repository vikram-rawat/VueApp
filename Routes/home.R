
# home --------------------------------------------------------------------

home <- function(request, response, keys, ...) {
  response$status <- 200L
  response$type <- 'html'
  response$body <- readHtml("fiery-app/dist/index.html")
  return(FALSE)
}

# home fallback -----------------------------------------------------------

jsonHome <- function(request, response, keys, ...) {
  response$status <- 200L
  response$type <- 'application/json'
  response$body <- toJSON(mtcars)
  return(FALSE)
}