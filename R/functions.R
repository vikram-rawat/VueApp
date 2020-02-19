# load html ---------------------------------------------------------------

readHtml <- function(filename) {
  readChar(con = filename,
           file.info(filename)$size)
}

# load statics ------------------------------------------------------------

readCss <- function(fileName) {
  readBin(fileName,
          raw(),
          file.info(fileName)$size)
}
