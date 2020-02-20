# load html ---------------------------------------------------------------

readHtml <- function(filename) {
  readBin(con = filename,
          raw(),
          file.info(filename)$size)
}

# load statics ------------------------------------------------------------

readCss <- function(fileName) {
  readBin(fileName,
          raw(),
          file.info(fileName)$size)
}