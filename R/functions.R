# load html ---------------------------------------------------------------

readHtml <- function(fileName) {
  readChar(con = fileName,
          file.info(fileName)$size,
          useBytes = FALSE)
}

# load statics ------------------------------------------------------------

readCss <- function(fileName) {
  readBin(fileName,
          raw(),
          file.info(fileName)$size)
}